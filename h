May 06 07:21:08 io kernel: INFO: rcu_sched self-detected stall on CPU { 3}  (t=2101 jiffies g=19039009 c=19039008 q=298247)
kernel: NMI backtrace for cpu 3
kernel: Hardware name: Supermicro X9DR3-F/X9DR3-F, BIOS 3.0a 07/31/2013
kernel: task: ffff880fb0cb1120 ti: ffff880fb0cb1680 task.ti: ffff880fb0cb1680
kernel: RIP: 0010:[<ffffffff8134f5f6>]  [<ffffffff8134f5f6>] delay_tsc+0x36/0x60
kernel: RSP: 0018:ffff88103fc63d78  EFLAGS: 00000046
kernel: RAX: 000000000372939b RBX: 00000000000003e9 RCX: 0000000003729350
kernel: RDX: 000000000005941f RSI: 0000000000000003 RDI: 000000000003344f
kernel: RBP: ffff88103fc63d78 R08: ffffffff8187c158 R09: ffffffff819a94f4
kernel: R10: 0000000000003e3a R11: 0000000000003e39 R12: 0000000000001000
kernel: R13: 0000000000000400 R14: 0000000000000082 R15: 0000000000000002
kernel: FS:  00007f8d17c3f780(0000) GS:ffff88103fc60000(0000) knlGS:0000000000000000
kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
kernel: CR2: 00007f0818af9010 CR3: 0000000a24531000 CR4: 00000000001607f0
kernel: Stack:
kernel:  ffff88103fc63d88 ffffffff8134f52a ffff88103fc63d98 ffffffff8134f558
kernel:  ffff88103fc63db8 ffffffff8102de92 0000000000009032 ffffffff8187c158
kernel:  ffff88103fc63e00 ffffffff8102f344 0000000800000008 0000000000000004
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
kernel:  [<ffffffff815db799>] ? _raw_spin_unlock_irqrestore+0x9/0x10
kernel:  [<ffffffffa0b3bfca>] dbuf_read+0x8ca/0x1250 [zfs]
kernel:  [<ffffffffa0be7660>] ? cleanup_module+0x16ad/0x35235 [zfs]
kernel:  [<ffffffffa0b55859>] dnode_hold_impl+0x1b9/0x5a0 [zfs]
kernel:  [<ffffffffa0b55c54>] dnode_hold+0x14/0x20 [zfs]
kernel:  [<ffffffffa0b43d94>] dmu_bonus_hold+0x24/0x2d0 [zfs]
kernel:  [<ffffffffa0b78189>] sa_buf_hold+0x9/0x10 [zfs]
kernel:  [<ffffffffa0bcd956>] zfs_zget+0x166/0x2c0 [zfs]
kernel:  [<ffffffffa0c05886>] ? cleanup_module+0x1f8d3/0x35235 [zfs]
kernel:  [<ffffffffa0bad5b6>] zfs_dirent_lock+0x456/0x580 [zfs]
kernel:  [<ffffffff811e91e1>] ? ext4_mark_iloc_dirty+0x311/0x6e0
kernel:  [<ffffffffa0baee60>] zfs_get_xattrdir+0x120/0x1a0 [zfs]
kernel:  [<ffffffff81225e16>] ? jbd2_journal_stop+0x156/0x2d0
kernel:  [<ffffffffa0bec48d>] ? cleanup_module+0x64da/0x35235 [zfs]
kernel:  [<ffffffff815da589>] ? mutex_unlock+0x9/0x10
kernel:  [<ffffffffa0bc1ce5>] zfs_lookup+0x1b5/0x310 [zfs]
kernel:  [<ffffffffa0bde58a>] zpl_prune_sb+0xba/0xdd0 [zfs]
kernel:  [<ffffffffa0bde7a0>] zpl_prune_sb+0x2d0/0xdd0 [zfs]
kernel:  [<ffffffffa0bde8f1>] zpl_prune_sb+0x421/0xdd0 [zfs]
kernel:  [<ffffffff8113b5c7>] generic_getxattr+0x47/0x70
kernel:  [<ffffffff8113b94b>] vfs_getxattr+0x7b/0x80
kernel:  [<ffffffff8113bd18>] getxattr+0x98/0x270
kernel:  [<ffffffff81122e2d>] ? final_putname+0x1d/0x40
kernel:  [<ffffffff81123094>] ? putname+0x24/0x40
kernel:  [<ffffffff8112808a>] ? user_path_at_empty+0x5a/0x90
kernel:  [<ffffffff810f1519>] ? vma_rb_erase+0x129/0x240
kernel:  [<ffffffff810f2f80>] ? do_munmap+0x1c0/0x410
kernel:  [<ffffffff8113c7c0>] SyS_getxattr+0x50/0x90
kernel:  [<ffffffff815dc63e>] system_call_fastpath+0x16/0x1b
kernel: Code: 00 0f 1f 00 0f ae e8 0f 31 89 c1 eb 16 0f 1f 84 00 00 00 00 00 f3 90 65 8b 14 25 2c 90 00 00 39 d6 75 1b 0f 1f 00 0f ae e8 0f 31 <48> c1 e2 20 89 c0 48 09 c2 89 d0 29 ca 39 fa 72 d9 5d c3 29 c1 