#!/usr/bin/env -S v -g

// https://hackeradam.com/x86-64-linux-syscalls/
const a = '0	sys_read	unsigned int fd	char* buf	size_t count			
1	sys_write	unsigned int fd	const char* buf	size_t count			
2	sys_open	const char* filename	int flags	int mode			
3	sys_close	unsigned int fd					
4	sys_stat	const char* filename	struct stat* statbuf				
5	sys_fstat	unsigned int fd	struct stat* statbuf				
6	sys_lstat	const char* filename	struct stat* statbuf				
7	sys_poll	struct poll_fd* ufds	unsigned int nfds	long timeout_msecs			
8	sys_lseek	unsigned int fd	off_t offset	unsigned int origin			
9	sys_mmap	unsigned long addr	unsigned long len	unsigned long prot	unsigned long flags	unsigned long fd	unsigned long off
10	sys_mprotect	unsigned long start	size_t len	unsigned long prot			
11	sys_munmap	unsigned long addr	size_t len				
12	sys_brk	unsigned long brk					
13	sys_rt_sigaction	int sig	const struct sigaction* act	struct sigaction* oact	sizt_t sigsetsize		
14	sys_rt_sigprocmask	int how	sigset_t* nset	sigset_t* oset	sizt_t sigsetsize		
15	sys_rt_sigreturn	unsigned long _unused					
16	sys_ioctl	unsigned int fd	unsigned int cmd	unsigned long arg			
17	sys_pread64	unsigned long fd	char* buf	size_t count	off_t pos		
18	sys_pwrite64	unsigned int fd	const char* fd	sizt_t count	off_t pos		
19	sys_readv	unsigned long fd	const struct iovec* vec	unsigned long vlen			
20	sys_writev	unsigned long fd	const struct iovec* vec	unsigned long vlen			
21	sys_access	const char* filename	int mode				
22	sys_pipe	int* fields					
23	sys_select	int n	fd_set* inp	fd_set* outp	fd_set* exp	struct timeval* tvp	
24	sys_sched_yield						
25	sys_mremap	unsigned long addr	unsigned long old_len	unsigned long new_len	unsigned long flags	unsigned long new_addr	
26	sys_msync	unsigned long start	size_t len	int flags			
27	sys_mincore	unsigned long start	size_t len	unsigned char* vec			
28	sys_madvise	unsigned long start	sizt_t len_in	int behavior			
29	sys_shmget	key_t key	size_t size	int shmflg			
30	sys_shmat	int shmid	char* shmaddr	int shmflg			
31	sys_shmctl	int shmid	int cmd	struct shmid_ds* buf			
32	sys_dup	unsigned int fields					
33	sys_dup2	unsigned int oldfd	unsigned int newfd				
34	sys_pause						
35	sys_nanosleep	struct timespec* rqtp	struct timespec* rmtp				
36	sys_getitimer	int which	struct itimerval* value				
37	sys_alarm	unsigned int seconds					
38	sys_setitimer	int which	struct itimerval* value	struct itimerval* ovalue			
39	sys_getpid						
40	sys_sendfile	int out_fd	int in_fd	off_t* offset	size_t count		
41	sys_socket	int family	int type	int protocol			
42	sys_connect	int fd	struct sockaddr* uservaddr	int addrlen			
43	sys_accept	int fd	struct sockaddr* upeer_sockaddr	int upeer_addrlen			
44	sys_sendto	int fd	void* buff	size_t len	unsigned int flags	struct sockaddr* addr	socklen_t addr_len
45	sys_recvfrom	int fd	void *ubuf	size_t len	unsigned int flags	struct sockaddr* addr	socklen_t* addr_len
46	sys_sendmsg	int fd	struct msghdr* msg	unsigned int flags			
47	sys_recvmsg	int fd	struct msghdr* msg	unsigned int flags			
48	sys_shutdown	int fd	int how				
49	sys_bind	int fd	struct sockaddr* umyaddr	int addrlen			
50	sys_listen	int fd	int backlog				
51	sys_getsockname	int fd	struct sockaddr* usockaddr	int* usockaddr_len			
52	sys_getpeername	int fd	struct sockaddr* usockaddr	int* usockaddr_len			
53	sys_socketpair	int family	int type	int protocol	int* usockvec		
54	sys_setsockopt	int fd	int level	int optname	char* optval	int optlen	
55	sys_getsockopt	int fd	int level	int optname	char* optval	int* optlen	
56	sys_clone	unsigned long clone_flags	unsigned long newsp	void* parent_tid	void* child_tid	unsigned int tid	
57	sys_fork						
58	sys_vfork						
59	sys_execve	const char* filename	const char* argv[]	const char* envp[]			
60	sys_exit	int error_code					
61	sys_wait4	pid_t upid	int* stat_addr	int options	struct rusage* ru		
62	sys_kill	pid_t pid	int sig				
63	sys_uname	struct old_utsname* name					
64	sys_semget	key_t key	int nsems	int semflg			
65	sys_semop	int semid	struct sembuf* tsops	unsigned nsops			
66	sys_semctl	int semid	int semnum	int cmd	union semun arg		
67	sys_shmdt	char* shmaddr					
68	sys_msgget	key_t key	int msgflg				
69	sys_msgsnd	int msquid	struct msgbuf* msgp	size_t msgsz	int msgflg		
70	sys_msgrcv	int msqid	struct msgbuf* msgp	size_t msgsz	long msgtyp	int msgflg	
71	sys_msgctl	int msqid	int cmd	struct msqid_ds* buf			
72	sys_fcntl	unsigned int fd	unsigned int cmd	unsigned long arg			
73	sys_flock	unsigned int fd	unsigned int cmd				
74	sys_fsync	unsigned int fd					
75	sys_fdatasync	unsigned int fd					
76	sys_truncate	const char* path	long length				
77	sys_ftruncate	unsigned int fd	unsigned long length				
78	sys_getdents	unsigned int fd	struct linux_dirent* dirent	unsigned int count			
79	sys_getcwd	char* buf	unsigned long size				
80	sys_chdir	const char* filename					
81	sys_fchdir	unsigned int fd					
82	sys_rename	const char* oldname	const char* newname				
83	sys_mkdir	const char* pathname	int mode				
84	sys_rmdir	const char* pathname					
85	sys_creat	const char* pathname	int mode				
86	sys_link	const char* oldname	const char* newname				
87	sys_unlink	const char* pathname					
88	sys_symlink	const char* oldname	const char* newname				
89	sys_readlink	const char* path	char* buf	int bufsiz			
90	sys_chmod	const char* filename	mode_t mode				
91	sys_fchmod	unsigned int fd	mod_t mode				
92	sys_chown	const char* filename	uid_t user	gid_t group			
93	sys_fchown	unsigned int fd	uid_t user	gid_t group			
94	sys_lchown	const char* filename	uid_t user	guid_t group			
95	sys_umask	int mask					
96	sys_gettimeofday	struct timeval* tv	struct timezone* tz				
97	sys_getrlimit	unsigned int resource	struct rlimit* rlim				
98	sys_getrusage	int who	struct rusage* ru				
99	sys_sysinfo	struct sysinfo* info					
100	sys_times	struct tms* tbuf					
101	sys_ptrace	long request	long pid	unsigned long addr	unsigned long data		
102	sys_getuid						
103	sys_syslog	int type	char* buf	int len			
104	sys_getgid						
105	sys_setuid	uid_t uid					
106	sys_setgid	gid_t gid					
107	sys_geteuid						
108	sys_getegid						
109	sys_setpgid	pid_t pid					
110	sys_getppid						
111	sys_getpgrp						
112	sys_setsid						
113	sys_setreuid	uid_t ruid	uid_t euid				
114	sys_setregid	gid_t rgid	gid_t egid				
115	sys_getgroups	int gidsetsize	gid_t* grouplist				
116	sys_setgroups	int gidsetsize	gid_t* grouplist				
117	sys_setresuid	uid_t* ruid	uid_t* euid	uid_t* suid			
118	sys_getresuid	uid_t* ruid	uid_t* euid	uid_t *suid			
119	sys_setresgid	gid_t rgid	gid_t egid	gid_t sgid			
120	sys_getresgid	gid_t* rgid	gid_t* egid	gid_t* sgid			
121	sys_getpgid	pid_t pid					
122	sys_setfsuid	uid_t uid					
123	sys_setfsgid	gid_t gid					
124	sys_getsid	pid_t pid					
125	sys_capget	cap_user_header_t header	cap_user_data_t dataptr				
126	sys_capset	cap_user_header_t header	const user_data_t data				
127	sys_rt_sigpending	sigset_t* set	size_t sigsetsize				
128	sys_sigtimedwait	const sigset_t* uthese	siginfo_t* uinfo	const struct timespec* utf	size_t sigsetsize		
129	sys_rt_sigqueueinfo	pid_t pid	int sig	siginfo_t* uinfo			
130	sys_rt_sigsuspend	sigset_t* unewset	size_t sigsetsize				
131	sys_sigaltstack	const stack_t* uss	stack_t* uoss				
132	sys_utime	char* filename	struct utimbuf* times				
133	sys_mknod	const char* filename	umode_t mode	unsigned dev			
134	sys_uselib	const char* library					
135	sys_personality	unsigned int personality					
136	sys_ustat	unsigned dev	struct ustat* ubuf				
137	sys_statfs	const char* pathname	struct statfs* buf				
138	sys_fstatfs	unsigned int fd	struct statfs* buf				
139	sys_sysfs	int option	unsigned long arg1	unsigned long arg2			
140	sys_getpriority	int which	int who				
141	sys_setpriority	int which	int who	int niceval			
142	sys_sched_setparam	pid_t pid	struct sched_param* param				
143	sys_sched_getparam	pid_t pid	struct sched_param* param				
144	sys_sched_setscheduler	pid_t pid	int policy	struct sched_param* param			
145	sys_sched_getscheduler	pid_t pid					
146	sys_sched_get_priority_max	int policy					
147	sys_sched_get_policy_min	int policy					
148	sys_sched_rr_get_interval	pid_t pid	struct timespec* interval				
149	sys_mlock	unsigned long start	size_t len				
150	sys_munlock	unsigned long start	size_t len				
151	sys_mlockall	int flags					
152	sys_munlockall						
153	sys_vhangup						
154	sys_modify_ldt	int func	void* ptr	unsigned long bytecount			
155	sys_pivot_root	const char* new_root	const char* put_old				
156	sys_sysctl	struct __sysctl_args* args					
157	sys_prctl	int option	unsigned long arg2	unsigned long arg3	unsigned long arg4		unsigned long arg5
158	sys_arch_prctl	struct task_struct* task	int code	unsigned long* addr			
159	sys_adjtimex	struct timex *txc_p					
160	sys_setrlimit	unsigned int resource	struct rlimit* rlim				
161	sys_chroot	const char* filename					
162	sys_sync						
163	sys_acct	const char* name					
164	sys_settimeofday	struct timeval* tv	struct timezone* tz				
165	sys_mount	char* dev_name	char* dir_name	char* type	unsigned long flags	void* data	
166	sys_umount2	const char* target	int flags				
167	sys_swapon	const char* specialfile	int swap_flags				
168	sys_swapoff	const char* specialfile					
169	sys_reboot	int magic1	int magic2	unsigned int cmd	void* arg		
170	sys_sethostname	char* name	int len				
171	sys_setdomainname	char* name	int len				
172	sys_iopl	unsigned int level	struct pt_regs* regs				
173	sys_ioperm	unsigned long from	unsigned long num	int turn_on			
174	sys_create_module	REMOVED IN Linux 2.6					
175	sys_init_module	void* umod	unsigned long len	const char* uargs			
176	sys_delete_module	const char* name_user	unsigned int flags				
177	sys_get_kernel_syms	REMOVED IN Linux 2.6					
178	sys_query_module	REMOVED IN Linux 2.6					
179	sys_quotactl	unsigned int cmd	const char* special	quid_t id	void* addr		
180	sys_nfsservctl	REMOVED IN Linux 3.1					
181	sys_getpmsg	UNIMPLEMENTED					
182	sys_putpmsg	UNIMPLEMENTED					
183	sys_afs_syscall	UNIMPLEMENTED					
184	sys_tuxcall	UNIMPLEMENTED					
185	sys_security	UNIMPLEMENTED					
186	sys_gettid						
187	sys_readahead	int fd	off_64t offset	size_t count			
188	sys_setxattr	const char* pathname	const char* name	const void* value	size_t size	int flags	
189	sys_lsetxaddr	const char* pathname	const char* name	const void* value	size_t size	int flags	
190	sys_fsetxaddr	int fd	const char* name	const void& value	size_t size	int flags	
191	sys_getxaddr	const char* pathname	const char* name	void *value	size_t size		
192	sys_lgetxattr	const char* pathname	const char* name	void* value	size_t size		
193	sys_fgetxaddr	int fd	const char* name	void* value	size_t size		
194	sys_listxattr	const char* pathname	char* list	size_t size			
195	sys_llistxattr	const char* pathname	char* list	size_t size			
196	sys_flistxattr	int fd	char* list	size_t size			
197	sys_removexattr	const char* pathname	const char* name				
198	sys_lremovexattr	const char* pathname	const char* name				
199	sys_fremovexattr	int fd	const char* name				
200	sys_tkill	pid_t pid	int sig				
201	sys_time	time_t* tloc					
202	sys_futex	u32* uaddr	int op	u32 val	struct timespec* utime	u32* uaddr2	u32 val3
203	sys_sched_setaffinity	pid_t pid	unsigned int len	unsigned long* user_mask_ptr			
204	sys_sched_getaffinity	pid_t pid	unsigned int len	unsigned long* user_mask_ptr			
205	sys_set_thread_area	struct user_desc* u_info					
206	sys_io_setup	unsigned nr_events	aio_context_t* ctxp				
207	sys_io_destroy	aio_context_t ctx					
208	sys_io_getevents	aio_context_t ctx_id	long min_nr	long nr	struct io_event* events		
209	sys_io_submit	aio_context_t* ctx_id	long nr	struct iocb** iocbpp			
210	sys_io_cancel	aio_context_t* ctx_id	struct iocb* iocb	struct io_event* result			
211	sys_get_thread_area	struct user_desc* u_info					
212	sys_lookup_dcookie	u64 cookie64	long buf	long len			
213	sys_epoll_create	int size					
214	sys_epoll_ctl_old	UNIMPLEMENTED					
215	sys_epoll_wait_old	UNIMPLEMENTED					
216	sys_remap_file_pages	unsigned long start	unsigned long size	unsigned long prot	unsigned long pgoff	unsigned long flags	
217	sys_getdents64	unsigned int fd	struct linux_dirent64* dirent	unsigned int count			
218	sys_set_tid_address	int* tidptr					
219	sys_restart_syscall						
220	sys_semtimedop	int semid	struct sembuf* tsops	unsigned nsops	const struct timespec* timeout		
221	sys_fadvise64	int fd	off_t offset	size_t len	int advice		
222	sys_timer_create	const clockid_t which_clock	struct sigevent* timer_event_spec	timer_t* created_timer_id			
223	sys_timer_settime	timer_t timer_id	int flags	const struct itimerspec* new_setting	struct itimerspec* old_setting		
224	sys_timer_gettime	timer_t timer_id	struct itimerspec* setting				
225	sys_timer_getoverrun	timer_t timer_id					
226	sys_timer_delete	timer_t timer_id					
227	sys_clock_settime	const clockid_t which_clock	const struct timespec* tp				
228	sys_clock_gettime	const clockid_t which_clock	struct timespec* tp				
229	sys_clock_getres	const clockid_t which_clock	struct timespect* tp				
230	sys_clock_nanosleep	const clockid_t which_clock	int flags	const struct timespec* rqtp	struct timespec* rmtp		
231	sys_exit_group	int error_code					
232	sys_epoll_wait	int epfd	struct epoll_event* events	int maxevents	int timeout		
233	sys_epoll_ctl	int epfd	int op	int fd	struct epoll_event* event		
234	sys_tgkill	pid_t tgid	pid_t pid	int sig			
235	sys_utimes	char* filename	struct timeval* utimes				
236	sys_vserver	UNIMPLEMENTED					
237	sys_mbind	unsigned long start	unsigned long len	unsigned long mode	unsigned long *nmask	unsigned long maxnode	unsigned flags
238	sys_set_mempolicy	int mode	unsigned long* nmask	unsigned long maxnode			
239	sys_get_mempolicy	int* policy	unsigned long* nmask	unsigned long maxnode	unsigned long addr	unsigned long flags	
240	sys_mq_open	const char* u_name	int oflag	mode_t mode	struct mq_attr* u_attr		
241	sys_mq_unlink	const char* u_name					
242	sys_mq_timedsend	mqd_t mqdes	const char* u_msg_ptr	size_t msg_len	unsigned int msg_prio	const struct timespec* u_abs_timeout	
243	sys_mq_timedreceive	mqd_t mqdes	char* u_msg_ptr	size_t msg_len	unsigned int* u_msg_prio	const struct timespec* u_abs_timeout	
244	sys_mq_notify	mqd_t mqdes	const struct sigevent* u_notification				
245	sys_mq_getsetattr	mqd_t mqdes	const struct mq_attr* u_mqstat	struct mq_attr* u_omqstat			
246	sys_kexec_load	unsigned long entry	unsigned long nr_segments	struct kexec_segment* segments	unsigned long flags		
247	sys_waitid	int which	pid_t upid	struct siginfo* infop	int options	struct rusage* ru	
248	sys_add_key	const char* _type	const char* _description	const void* _payload	size_t plen		
249	sys_request_key	const char* _type	const char* _description	const char* _callout_info	key_serial_t destringid		
250	sys_keyctl	int option	unsigned long arg2	unsigned long arg3	unsigned long arg4	unsigned long arg5	
251	sys_ioprio_set	int which	int who	int ioprio			
252	sys_ioprio_get	int which	int who				
253	sys_inotify_init						
254	sys_inotify_add_watch	int fd	const char* pathname	u32 mask			
255	sys_inotify_rm_watch	int fd	int wd				
256	sys_migrate_pages	pid_t pid	unsigned long maxnode	const unsigned long* old_nodes	const unsigned long* new_nodes		
257	sys_openat	int dfd	const char* filename	int flags	int mode		
258	sys_mkdirat	int dfd	const char* pathname	int mode			
259	sys_mknodat	int dfd	const char* filename	int mode	unsigned dev		
260	sys_fchownat	int dfd	const char* filename	uid_t user	gid_t group	int flag	
261	sys_futimesat	int dfd	const char* filename	struct timeval* utimes			
262	sys_newfstatat	int dfd	const char* filename	struct stat* statbuf	int flag		
263	sys_unlinkat	int dfd	const char* pathname	int flag			
264	sys_renameat	int oldfd	const char* oldname	int newfd	const char* newname		
265	sys_linkat	int oldfd	const char* oldname	int newfd	const char* newname	int flags	
266	sys_symlinkat	const char* oldname	int newfd	const char* newname			
267	sys_readlinkat	int dfd	const char* pathname	char* buf	int bufsiz		
268	sys_fchmodat	int dfd	const char* filename	mode_t mode			
269	sys_faccessat	int dfd	const char* filename	int mode			
270	sys_pselect6	int n	fd_set* inp	fd_set* outp	fd_set* exp	struct timespec* tsp	void* sig
271	sys_ppoll	struct pollfd* ufds	unsigned int nfds	struct timespec* tsp	const sigset_t* sigmask	size_t sigsetsize	
272	sys_unshare	unsigned long unshare_flags					
273	sys_set_robust_list	struct robust_list_head* head	size_t len				
274	sys_get_robust_list	int pid	struct robust_list_head** head_ptr	size_t* len_ptr			
275	sys_splice	int fd_in	off_t* off_in	int fd_out	off_t* off_out	size_t len	unsigned int flags
276	sys_tee	int fdin	int fdout	size_t len	unsigned int flags		
277	sys_sync_file_range	long fd	off_t offset	off_t bytes	long flags		
278	sys_vmsplice	int fd	const struct iovec* iov	unsigned long nr_segs	unsigned int flags		
279	sys_move_pages	pid_t pid	unsigned long nr_pages	const void** pages	const int* nodes	int* status	int flags
280	sys_utimensat	int dfd	const char* filename	struct timespec* utimes	int flags		
281	sys_epoll_wait	int epfd	struct epoll_event* events	int maxevents	int timeout	const sigset_t* sigmask	size_t sigsetsize
282	sys_signalfd	int ufd	sigset_t* user_mask	size_t sizemask			
283	sys_timerfd_create	int clockid	int flags				
248	sys_eventfd	unsigned int count					
285	sys_fallocate	long fd	long mode	off_t offset	off_t len		
286	sys_timerfd_settime	int ufd	int flags	const struct itimerspec* utmr	struct itimerspec* otmr		
287	sys_timerfd_gettime	int ufd	struct itimerspec* otmr				
288	sys_accept4	int fd	struct sockaddr* upeer_sockaddr	int* upeer_addrlen	int flags		
289	sys_signalfd4	int ufd	sigset_t* user_mask	size_t sizemask	int flags		
290	sys_eventfd2	unsigned int count	int flags				
291	sys_epoll_create1	int flags					
292	sys_dup3	unsigned int oldfd	unsigned int newfd	int flags			
293	sys_pipe2	int* filedes	int flags				
294	sys_inotify_init1	int flags					
295	sys_preadv	unsigned long fd	const struct iovec* vec	unsigned long vlen	unsigned long pos_l	unsigned long pos_h	
296	sys_pwritev	unsigned long fd	const struct iovec* vec	unsigned long vlen	unsigned long pos_l	unsigned long pos_h	
297	sys_rt_tgsigqueueinfo	pid_t tgid	pid_t pid	int sig	siginfo_t* uinfo		
298	sys_perf_event_open	struct perf_event_attr* attr_uptr	pid_t pid	int cpu	int group_fd	unsigned long flags	
299	sys_recvmmsg	int fd	struct msghdr* mmsg	unsigned int vlen	unsigned int flags	struct timespec* timeout	
300	sys_fanotify_init	unsigned int flags	unsigned int event_f_flags				
301	sys_fanotify_mark	long fanotify_fd	long flags	__u64 mask	long dfd	long pathname	
302	sys_prlimit64	pid_t pid	unsigned int resource	const struct rlimit64* new_rlim	struct rlimit64* old_rlim		
303	sys_name_to_handle_at	int dfd	const char* name	struct file_handle* handle	int *mnt_id	int flag	
304	sys_open_by_handle_at	int dfd	const char* name	struct file_handle* handle	int *mnt_id	int flags	
305	sys_clock_adjtime	clockid_t which_clock	struct time* tx				
306	sys_syncfs	int fd					
307	sys_sendmmsg	int fd	struct mmsghdr* mmsg	unsigned int vlen	unsigned int flags		
308	sys_setns	int fd	struct mmsghdr* mmsg	unsigned int vlen	unsigned int flags		
309	sys_getcpu	unsigned* cpup	unsigned* nodep	struct getcpu_cache* unused			
310	sys_process_vm_readv	pid_t pid	const struc iovec* lvec	unsigned long liovcnt	const struct iovec* rvec	unsigned long riovcnt	unsigned long flags
311	sys_process_vm_writev	pid_t pid	const struct iovec* lvec	unsigned long liovcnt	const struct iovcc* rvec	unsigned long riovcnt	unsigned long flags
312	sys_kcmp	pid_t pid1	pid_t pid2	int type	unsigned long idx1	unsigned long idx2	
313	sys_finit_module	int fd	const char* param_values	int flags			
314	sys_sched_setattr	pid_t pid	struct sched_attr* attr	unsigned int flags			
315	sys_sched_getattr	pid_t pid	struct sched_attr* attr	unsigned int size	unsigned int flags		
316	sys_renameat2	int olddfd	const char* oldname	int newdfd	const char* newname	unsigned int flags	
317	sys_seccomp	unsigned int op	unsigned int flags	const char *uargs			
318	sys_getrandom	char* buf	size_t count	unsigned int flags			
319	sys_memfd_create	const char* uname_ptr	unsigned int flags				
320	sys_kexec_file_load	int kernel_fd	int initrd_fd	unsigned long cmdline_len	const char* cmdline_ptr	unsigned long flags	
321	sys_bpf	int cmd	union bpf_attr* attr	unsigned int size			
322	stub_execveat	int dfd	const char* filename	const char* argv	const char* envp	int flags	
323	userfaultfd	int flags					
324	membarrier	int cmd	int flags				
325	mlock2	unsigned long start	size_t len	int flags			
326	copy_file_range	int fd_in	off_t* off_in	int fd_out	off_t* off_out	size_t len	unsigned int flags
327	preadb2	unsigned long fd	const struct iovec* vec	unsigned long vlen	unsigned long pos_l	unsigned long pos_h	int flags
328	pwritev2	unsigned long fd	const struct iovec* vec	unsigned long vlen	unsigned long pos_l	unsigned long pos_h	int flags
329	pkey_mprotect						
330	pkey_alloc						
331	pkey_free						
332	statx						
333	io_pgetevents						
334	rseq						
335	pkey_mprotect'

const reserved = ['dup']
const cdup = ['epoll_wait', 'pkey_mprotect']
mut dup := []string{}

mut implf := create('impl.stas')!
mut constf := create('syscalls.stas')!

for l in a.split_into_lines() {
	ll := l.split('\t').filter(it != '')
	args := ll[2..]

	if args.any(it.starts_with('UNIMPLEMENTED') || it.starts_with('REMOVED IN')) {
		continue
	}

	mut name := ll[1]
	sysc_num := ll[0]

	if dup.any(name.contains(it)) {
		name += '2'
	} else {
		if cdup.any(name.contains(it)) {
			dup << name
		}
	}
	

	mut argannot := ''
	for arg in args {
		argannot += '\'${arg}\' '
	}

	name = name.replace('stub_', 'sys_')
	if !name.starts_with('sys_') {
		name = 'sys_' + name
	}

	mut fnname := name.replace('sys_', '')

	if fnname in reserved {
		fnname += '_'
	}

	if fnname == 'exit' {
		continue
	}

	out := '; ( ${argannot}-- c )
fn ${fnname} ${args.len} 1 {
	${name} syscall${args.len}
}'
	cons := 'const ${name} ${sysc_num}'
	implf.writeln(out)!
	constf.writeln(cons)!
}