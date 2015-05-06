May 06 07:18:08 io kernel: INFO: rcu_sched self-detected stall on CPU { 2}  (t=2100 jiffies g=19038977 c=19038976 q=379424)
kernel: NMI backtrace for cpu 2
kernel: CPU: 2 PID: 2697 Comm: arc_adapt Tainted: P           O 3.14.39-hardened #1
kernel: Hardware name: Supermicro X9DR3-F/X9DR3-F, BIOS 3.0a 07/31/2013
kernel: task: ffff88101eb4e6c0 ti: ffff88101eb4ec20 task.ti: ffff88101eb4ec20
kernel: RIP: 0010:[<ffffffff8134f5f6>]  [<ffffffff8134f5f6>] delay_tsc+0x36/0x60
kernel: RSP: 0000:ffff88103fc43d78  EFLAGS: 00000046
kernel: RAX: 00000000e06e974d RBX: 00000000000003e9 RCX: 00000000e06e9705
kernel: RDX: 00000000000593c6 RSI: 0000000000000002 RDI: 000000000003344f
kernel: RBP: ffff88103fc43d78 R08: ffffffff8187c158 R09: ffffffff819a94f4
kernel: R10: 0000000000003396 R11: 0000000000003395 R12: 0000000000001000
kernel: R13: 0000000000000400 R14: 0000000000000082 R15: 0000000000000002
kernel: FS:  0000000000000000(0000) GS:ffff88103fc40000(0000) knlGS:0000000000000000
kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
kernel: CR2: 00007fae08dfa000 CR3: 00000000015ed000 CR4: 00000000001607f0
kernel: Stack:
kernel:  ffff88103fc43d88 ffffffff8134f52a ffff88103fc43d98 ffffffff8134f558
kernel:  ffff88103fc43db8 ffffffff8102de92 0000000000009032 ffffffff8187c158
kernel:  ffff88103fc43e00 ffffffff8102f344 0000000600000008 0000000000000003
kernel: Call Trace:
kernel:  <IRQ> 
kernel: 
kernel:  [<ffffffff8134f52a>] __delay+0xa/0x10
kernel:  [<ffffffff8134f558>] __const_udelay+0x28/0x30
kernel:  [<ffffffff8102de92>] native_safe_apic_wait_icr_idle+0x22/0x50
kernel:  [<ffffffff8102f344>] default_send_IPI_mask_sequence_phys+0xc4/0xd0
kernel:  [<ffffffff81032762>] physflat_send_IPI_all+0x12/0x20
kernel:  [<ffffffff8102f4f6>] arch_trigger_all_cpu_backtrace+0x46/0x80
kernel:  [<ffffffff8108d7fe>] rcu_check_callbacks+0x36e/0x5d0
kernel:  [<ffffffff810bcfa7>] ? acct_account_cputime+0x17/0x20
kernel:  [<ffffffff81070e79>] ? account_system_time+0x89/0x180
kernel:  [<ffffffff8104e532>] update_process_times+0x42/0x70
kernel:  [<ffffffff81096de1>] tick_sched_handle.isra.17+0x31/0x40
kernel:  [<ffffffff81096e29>] tick_sched_timer+0x39/0x60
kernel:  [<ffffffff81064bad>] __run_hrtimer.isra.32+0x3d/0xc0
kernel:  [<ffffffff810651b5>] hrtimer_interrupt+0xe5/0x220
kernel:  [<ffffffff8102db82>] local_apic_timer_interrupt+0x32/0x60
kernel:  [<ffffffff8102dfaa>] smp_apic_timer_interrupt+0x3a/0x50
kernel:  [<ffffffff815dd19e>] apic_timer_interrupt+0x6e/0x80
kernel:  <EOI> 
kernel: 
kernel:  [<ffffffff815da4e6>] ? __mutex_unlock_slowpath+0x86/0x120
kernel:  [<ffffffff815da589>] mutex_unlock+0x9/0x10
kernel:  [<ffffffffa0b3bdbf>] dbuf_read+0x6bf/0x1250 [zfs]
kernel:  [<ffffffffa0be7660>] ? cleanup_module+0x16ad/0x35235 [zfs]
kernel:  [<ffffffffa0b55859>] dnode_hold_impl+0x1b9/0x5a0 [zfs]
kernel:  [<ffffffffa0b55c54>] dnode_hold+0x14/0x20 [zfs]
kernel:  [<ffffffffa0b43d94>] dmu_bonus_hold+0x24/0x2d0 [zfs]
kernel:  [<ffffffffa0b78189>] sa_buf_hold+0x9/0x10 [zfs]
kernel:  [<ffffffffa0bcd956>] zfs_zget+0x166/0x2c0 [zfs]
kernel:  [<ffffffffa0bae624>] zfs_link_destroy+0x604/0x760 [zfs]
kernel:  [<ffffffff8135c817>] ? __list_add+0x17/0x40
kernel:  [<ffffffff8110874a>] ? unfreeze_partials.isra.51+0x14a/0x1b0
kernel:  [<ffffffff8104da06>] ? lock_timer_base.isra.27+0x26/0x50
kernel:  [<ffffffff8104dea3>] ? try_to_del_timer_sync+0x43/0x60
kernel:  [<ffffffff815d77af>] ? schedule_timeout+0x12f/0x1d0
kernel:  [<ffffffff8110a7d9>] ? __kmalloc_node+0x29/0x1a0
kernel:  [<ffffffffa0998b6f>] ? spl_kmem_alloc+0xdf/0x1a0 [spl]
kernel:  [<ffffffffa0bae9d2>] zfs_rmnode+0x252/0x330 [zfs]
kernel:  [<ffffffffa0bce358>] zfs_zinactive+0x148/0x160 [zfs]
kernel:  [<ffffffffa0bc6f0f>] zfs_inactive+0x5f/0x210 [zfs]
kernel:  [<ffffffffa0bde2ee>] zpl_vap_init+0x8ae/0xa90 [zfs]
kernel:  [<ffffffffa0bedce0>] ? cleanup_module+0x7d2d/0x35235 [zfs]
kernel:  [<ffffffff81132a39>] evict+0x99/0x190
kernel:  [<ffffffff81132b66>] dispose_list+0x36/0x50
kernel:  [<ffffffff81133a22>] prune_icache_sb+0x42/0x50
kernel:  [<ffffffff8111b37d>] super_cache_scan+0xfd/0x170
kernel:  [<ffffffffa0bbe0ba>] zfs_sb_prune+0x9a/0xc0 [zfs]
kernel:  [<ffffffffa0bde4d0>] ? zpl_vap_init+0xa90/0xa90 [zfs]
kernel:  [<ffffffffa0bde4f1>] zpl_prune_sb+0x21/0xdd0 [zfs]
kernel:  [<ffffffffa0b3370e>] arc_space_return+0x1d4e/0x3d30 [zfs]
kernel:  [<ffffffffa0b332f0>] ? arc_space_return+0x1930/0x3d30 [zfs]
kernel:  [<ffffffffa099b32c>] __thread_exit+0x8c/0xa0 [spl]
kernel:  [<ffffffffa099b2c0>] ? __thread_exit+0x20/0xa0 [spl]
kernel:  [<ffffffff81062064>] kthread+0xc4/0xe0
kernel:  [<ffffffff81061fa0>] ? kthread_create_on_node+0x160/0x160
kernel:  [<ffffffff815dc589>] ret_from_fork+0x49/0x80
kernel:  [<ffffffff81061fa0>] ? kthread_create_on_node+0x160/0x160
kernel: Code: 00 0f 1f 00 0f ae e8 0f 31 89 c1 eb 16 0f 1f 84 00 00 00 00 00 f3 90 65 8b 14 25 2c 90 00 00 39 d6 75 1b 0f 1f 00 0f ae e8 0f 31 <48> c1 e2 20 89 c0 48 09 c2 89 d0 29 ca 39 fa 72 d9 5d c3 29 c1 