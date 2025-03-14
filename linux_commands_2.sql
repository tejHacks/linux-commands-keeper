-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2025 at 07:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linux_commands`
--

-- --------------------------------------------------------

--
-- Table structure for table `linux_commands`
--

CREATE TABLE `linux_commands` (
  `id` int(11) NOT NULL,
  `command` text NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `example` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linux_commands`
--

INSERT INTO `linux_commands` (`id`, `command`, `description`, `category`, `example`, `created_at`) VALUES
(1, 'pwd', 'Print the current working directory', 'Basic Navigation and File Management', 'pwd', '2025-03-06 13:08:28'),
(2, 'ls', 'List directory contents', 'Basic Navigation and File Management', 'ls -l', '2025-03-06 13:08:28'),
(3, 'cd', 'Change directory', 'Basic Navigation and File Management', 'cd /home/user', '2025-03-06 13:08:28'),
(4, 'mkdir', 'Create a directory', 'Basic Navigation and File Management', 'mkdir new_dir', '2025-03-06 13:08:28'),
(5, 'rmdir', 'Remove empty directories', 'Basic Navigation and File Management', 'rmdir empty_dir', '2025-03-06 13:08:28'),
(6, 'rm', 'Remove files or directories', 'Basic Navigation and File Management', 'rm file.txt', '2025-03-06 13:08:28'),
(7, 'cp', 'Copy files or directories', 'Basic Navigation and File Management', 'cp file1.txt file2.txt', '2025-03-06 13:08:28'),
(8, 'mv', 'Move or rename files or directories', 'Basic Navigation and File Management', 'mv file.txt new_file.txt', '2025-03-06 13:08:28'),
(9, 'find', 'Search for files in a directory hierarchy', 'Basic Navigation and File Management', 'find / -name file.txt', '2025-03-06 13:08:28'),
(10, 'locate', 'Find files by name', 'Basic Navigation and File Management', 'locate file.txt', '2025-03-06 13:08:28'),
(11, 'touch', 'Change file timestamps or create empty files', 'Basic Navigation and File Management', 'touch new_file.txt', '2025-03-06 13:08:28'),
(12, 'tree', 'List contents of directories in a tree-like format', 'Basic Navigation and File Management', 'tree /home/user', '2025-03-06 13:08:28'),
(13, 'basename', 'Strip directory and suffix from filenames', 'Basic Navigation and File Management', 'basename /path/to/file.txt', '2025-03-06 13:08:28'),
(14, 'dirname', 'Strip last component from file name', 'Basic Navigation and File Management', 'dirname /path/to/file.txt', '2025-03-06 13:08:28'),
(15, 'realpath', 'Return the canonicalized absolute pathname', 'Basic Navigation and File Management', 'realpath file.txt', '2025-03-06 13:08:28'),
(16, 'stat', 'Display file or file system status', 'Basic Navigation and File Management', 'stat file.txt', '2025-03-06 13:08:28'),
(17, 'readlink', 'Print value of a symbolic link', 'Basic Navigation and File Management', 'readlink symlink', '2025-03-06 13:08:28'),
(18, 'file', 'Determine file type', 'Basic Navigation and File Management', 'file file.txt', '2025-03-06 13:08:28'),
(19, 'ln', 'Make links between files', 'Basic Navigation and File Management', 'ln -s file.txt symlink', '2025-03-06 13:08:28'),
(20, 'alias', 'Create or display aliases', 'Basic Navigation and File Management', 'alias ll=\"ls -l\"', '2025-03-06 13:08:28'),
(21, 'cat', 'Concatenate files and print on the standard output', 'Viewing and Editing Files', 'cat file.txt', '2025-03-06 13:08:28'),
(22, 'less', 'View file contents one screen at a time', 'Viewing and Editing Files', 'less file.txt', '2025-03-06 13:08:28'),
(23, 'more', 'View file contents one screen at a time', 'Viewing and Editing Files', 'more file.txt', '2025-03-06 13:08:28'),
(24, 'head', 'Output the first part of files', 'Viewing and Editing Files', 'head -n 10 file.txt', '2025-03-06 13:08:28'),
(25, 'tail', 'Output the last part of files', 'Viewing and Editing Files', 'tail -n 10 file.txt', '2025-03-06 13:08:28'),
(26, 'nano', 'Simple text editor', 'Viewing and Editing Files', 'nano file.txt', '2025-03-06 13:08:28'),
(27, 'vim', 'Advanced text editor', 'Viewing and Editing Files', 'vim file.txt', '2025-03-06 13:08:28'),
(28, 'gedit', 'GUI text editor', 'Viewing and Editing Files', 'gedit file.txt', '2025-03-06 13:08:28'),
(29, 'emacs', 'Advanced text editor', 'Viewing and Editing Files', 'emacs file.txt', '2025-03-06 13:08:28'),
(30, 'echo', 'Display a line of text', 'Viewing and Editing Files', 'echo \"Hello, world!\"', '2025-03-06 13:08:28'),
(31, 'wc', 'Print newline, word, and byte counts for each file', 'Viewing and Editing Files', 'wc file.txt', '2025-03-06 13:08:28'),
(32, 'cut', 'Remove sections from each line of files', 'Viewing and Editing Files', 'cut -d \",\" -f1 file.csv', '2025-03-06 13:08:28'),
(33, 'split', 'Split a file into pieces', 'Viewing and Editing Files', 'split -l 100 file.txt', '2025-03-06 13:08:28'),
(34, 'cmp', 'Compare two files byte by byte', 'Viewing and Editing Files', 'cmp file1.txt file2.txt', '2025-03-06 13:08:28'),
(35, 'diff', 'Compare files line by line', 'Viewing and Editing Files', 'diff file1.txt file2.txt', '2025-03-06 13:08:28'),
(36, 'patch', 'Apply a diff file to an original', 'Viewing and Editing Files', 'patch file.txt diff.patch', '2025-03-06 13:08:28'),
(37, 'sort', 'Sort lines of text files', 'Viewing and Editing Files', 'sort file.txt', '2025-03-06 13:08:28'),
(38, 'uniq', 'Report or omit repeated lines', 'Viewing and Editing Files', 'uniq file.txt', '2025-03-06 13:08:28'),
(39, 'tr', 'Translate or delete characters', 'Viewing and Editing Files', 'tr \"a-z\" \"A-Z\" < file.txt', '2025-03-06 13:08:28'),
(40, 'sed', 'Stream editor for filtering and transforming text', 'Viewing and Editing Files', 'sed \"s/old/new/g\" file.txt', '2025-03-06 13:08:28'),
(41, 'chmod', 'Change file mode bits', 'Permissions and Ownership', 'chmod +x script.sh', '2025-03-06 13:08:28'),
(42, 'chown', 'Change file owner and group', 'Permissions and Ownership', 'chown user:group file.txt', '2025-03-06 13:08:28'),
(43, 'chgrp', 'Change group ownership', 'Permissions and Ownership', 'chgrp group file.txt', '2025-03-06 13:08:28'),
(44, 'umask', 'Set file mode creation mask', 'Permissions and Ownership', 'umask 022', '2025-03-06 13:08:28'),
(45, 'ls -l', 'List detailed file information', 'Permissions and Ownership', 'ls -l file.txt', '2025-03-06 13:08:28'),
(46, 'id', 'Print user and group IDs', 'Permissions and Ownership', 'id user', '2025-03-06 13:08:28'),
(47, 'groups', 'Print the groups a user is in', 'Permissions and Ownership', 'groups user', '2025-03-06 13:08:28'),
(48, 'whoami', 'Print effective user ID', 'Permissions and Ownership', 'whoami', '2025-03-06 13:08:28'),
(49, 'sudo', 'Execute a command as another user', 'Permissions and Ownership', 'sudo apt-get update', '2025-03-06 13:08:28'),
(50, 'su', 'Change user ID or become superuser', 'Permissions and Ownership', 'su root', '2025-03-06 13:08:28'),
(51, 'top', 'Display Linux processes', 'System Monitoring and Processes', 'top', '2025-03-06 13:08:28'),
(52, 'htop', 'Interactive process viewer', 'System Monitoring and Processes', 'htop', '2025-03-06 13:08:28'),
(53, 'ps', 'Report a snapshot of the current processes', 'System Monitoring and Processes', 'ps aux', '2025-03-06 13:08:28'),
(54, 'kill', 'Terminate a process', 'System Monitoring and Processes', 'kill 1234', '2025-03-06 13:08:28'),
(55, 'killall', 'Kill processes by name', 'System Monitoring and Processes', 'killall firefox', '2025-03-06 13:08:28'),
(56, 'pkill', 'Kill processes by name or other attributes', 'System Monitoring and Processes', 'pkill firefox', '2025-03-06 13:08:28'),
(57, 'jobs', 'List active jobs', 'System Monitoring and Processes', 'jobs', '2025-03-06 13:08:28'),
(58, 'fg', 'Bring a job to the foreground', 'System Monitoring and Processes', 'fg %1', '2025-03-06 13:08:28'),
(59, 'bg', 'Send a job to the background', 'System Monitoring and Processes', 'bg %1', '2025-03-06 13:08:28'),
(60, 'nice', 'Run a command with modified scheduling priority', 'System Monitoring and Processes', 'nice -n 10 command', '2025-03-06 13:08:28'),
(61, 'renice', 'Alter priority of running processes', 'System Monitoring and Processes', 'renice -n 10 -p 1234', '2025-03-06 13:08:28'),
(62, 'uptime', 'Show how long the system has been running', 'System Monitoring and Processes', 'uptime', '2025-03-06 13:08:28'),
(63, 'free', 'Display amount of free and used memory', 'System Monitoring and Processes', 'free -m', '2025-03-06 13:08:28'),
(64, 'df', 'Report file system disk space usage', 'System Monitoring and Processes', 'df -h', '2025-03-06 13:08:28'),
(65, 'du', 'Estimate file space usage', 'System Monitoring and Processes', 'du -sh /home/user', '2025-03-06 13:08:28'),
(66, 'iostat', 'Report CPU and disk I/O statistics', 'System Monitoring and Processes', 'iostat', '2025-03-06 13:08:28'),
(67, 'vmstat', 'Report virtual memory statistics', 'System Monitoring and Processes', 'vmstat', '2025-03-06 13:08:28'),
(68, 'sar', 'Collect, report, or save system activity information', 'System Monitoring and Processes', 'sar -u', '2025-03-06 13:08:28'),
(69, 'watch', 'Execute a program periodically, showing output in fullscreen', 'System Monitoring and Processes', 'watch df -h', '2025-03-06 13:08:28'),
(70, 'time', 'Time a command', 'System Monitoring and Processes', 'time ls -l', '2025-03-06 13:08:28'),
(71, 'ping', 'Send ICMP ECHO_REQUEST to network hosts', 'Networking Commands', 'ping google.com', '2025-03-06 13:08:28'),
(72, 'curl', 'Transfer a URL', 'Networking Commands', 'curl google.com', '2025-03-06 13:08:28'),
(73, 'wget', 'Non-interactive network downloader', 'Networking Commands', 'wget https://example.com/file.txt', '2025-03-06 13:08:28'),
(74, 'ifconfig', 'Configure a network interface', 'Networking Commands', 'ifconfig eth0', '2025-03-06 13:08:28'),
(75, 'ip', 'Show / manipulate routing, devices, policy routing and tunnels', 'Networking Commands', 'ip addr show', '2025-03-06 13:08:28'),
(76, 'netstat', 'Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships', 'Networking Commands', 'netstat -tulnp', '2025-03-06 13:08:28'),
(77, 'ss', 'Socket statistics', 'Networking Commands', 'ss -tulnp', '2025-03-06 13:08:28'),
(78, 'nslookup', 'Query Internet name servers interactively', 'Networking Commands', 'nslookup google.com', '2025-03-06 13:08:28'),
(79, 'dig', 'DNS lookup utility', 'Networking Commands', 'dig google.com', '2025-03-06 13:08:28'),
(80, 'traceroute', 'Trace route to a network host', 'Networking Commands', 'traceroute google.com', '2025-03-06 13:08:28'),
(81, 'route', 'Show / manipulate the IP routing table', 'Networking Commands', 'route -n', '2025-03-06 13:08:28'),
(82, 'arp', 'Manipulate the system ARP cache', 'Networking Commands', 'arp -a', '2025-03-06 13:08:28'),
(83, 'tcpdump', 'Dump traffic on a network', 'Networking Commands', 'tcpdump -i eth0', '2025-03-06 13:08:28'),
(84, 'nmap', 'Network exploration tool and security scanner', 'Networking Commands', 'nmap google.com', '2025-03-06 13:08:28'),
(85, 'scp', 'Secure copy (remote file copy program)', 'Networking Commands', 'scp file.txt user@host:/path/', '2025-03-06 13:08:28'),
(86, 'rsync', 'Remote file synchronization', 'Networking Commands', 'rsync -avz file.txt user@host:/path/', '2025-03-06 13:08:28'),
(87, 'ftp', 'File Transfer Protocol client', 'Networking Commands', 'ftp host', '2025-03-06 13:08:28'),
(88, 'telnet', 'User interface to the TELNET protocol', 'Networking Commands', 'telnet host', '2025-03-06 13:08:28'),
(89, 'ssh', 'OpenSSH remote login client', 'Networking Commands', 'ssh user@host', '2025-03-06 13:08:28'),
(90, 'apt-get', 'APT package handling utility', 'Package Management', 'apt-get update', '2025-03-06 13:08:28'),
(91, 'apt', 'Advanced Package Tool', 'Package Management', 'apt install package', '2025-03-06 13:08:28'),
(92, 'yum', 'Yellowdog Updater, Modified', 'Package Management', 'yum install package', '2025-03-06 13:08:28'),
(93, 'dnf', 'Dandified YUM', 'Package Management', 'dnf install package', '2025-03-06 13:08:28'),
(94, 'pacman', 'Package manager utility for Arch Linux', 'Package Management', 'pacman -S package', '2025-03-06 13:08:28'),
(95, 'snap', 'Package manager for snap packages', 'Package Management', 'snap install package', '2025-03-06 13:08:28'),
(96, 'flatpak', 'Application deployment and package management for desktop Linux', 'Package Management', 'flatpak install package', '2025-03-06 13:08:28'),
(97, 'rpm', 'RPM Package Manager', 'Package Management', 'rpm -i package.rpm', '2025-03-06 13:08:28'),
(98, 'dpkg', 'Package manager for Debian', 'Package Management', 'dpkg -i package.deb', '2025-03-06 13:08:28'),
(99, 'brew', 'Homebrew package manager', 'Package Management', 'brew install package', '2025-03-06 13:08:28'),
(100, 'mount', 'Mount a filesystem', 'Disk and Storage Management', 'mount /dev/sdb1 /mnt', '2025-03-06 13:08:28'),
(101, 'umount', 'Unmount a filesystem', 'Disk and Storage Management', 'umount /mnt', '2025-03-06 13:08:28'),
(102, 'blkid', 'Locate/print block device attributes', 'Disk and Storage Management', 'blkid /dev/sdb1', '2025-03-06 13:08:28'),
(103, 'lsblk', 'List block devices', 'Disk and Storage Management', 'lsblk', '2025-03-06 13:08:28'),
(104, 'fdisk', 'Partition table manipulator for Linux', 'Disk and Storage Management', 'fdisk /dev/sdb', '2025-03-06 13:08:28'),
(105, 'parted', 'Partition manipulation program', 'Disk and Storage Management', 'parted /dev/sdb', '2025-03-06 13:08:28'),
(106, 'mkfs', 'Create a filesystem', 'Disk and Storage Management', 'mkfs.ext4 /dev/sdb1', '2025-03-06 13:08:28'),
(107, 'fsck', 'Check and repair a Linux filesystem', 'Disk and Storage Management', 'fsck /dev/sdb1', '2025-03-06 13:08:28'),
(108, 'tune2fs', 'Adjust tunable filesystem parameters on ext2/ext3/ext4 filesystems', 'Disk and Storage Management', 'tune2fs -l /dev/sdb1', '2025-03-06 13:08:28'),
(109, 'resize2fs', 'Resize an ext2/ext3/ext4 filesystem', 'Disk and Storage Management', 'resize2fs /dev/sdb1', '2025-03-06 13:08:28'),
(110, 'e2fsck', 'Check an ext2/ext3/ext4 filesystem', 'Disk and Storage Management', 'e2fsck /dev/sdb1', '2025-03-06 13:08:28'),
(111, 'lsattr', 'List file attributes on a Linux second extended filesystem', 'Disk and Storage Management', 'lsattr file.txt', '2025-03-06 13:08:28'),
(112, 'chattr', 'Change file attributes on a Linux second extended filesystem', 'Disk and Storage Management', 'chattr +i file.txt', '2025-03-06 13:08:28'),
(113, 'xfs_check', 'Check XFS filesystem consistency', 'Disk and Storage Management', 'xfs_check /dev/sdb1', '2025-03-06 13:08:28'),
(114, 'xfs_repair', 'Repair an XFS filesystem', 'Disk and Storage Management', 'xfs_repair /dev/sdb1', '2025-03-06 13:08:28'),
(115, 'btrfs', 'Btrfs filesystem management', 'Disk and Storage Management', 'btrfs filesystem df /mnt', '2025-03-06 13:08:28'),
(116, 'swapoff', 'Disable devices and files for swap space', 'Disk and Storage Management', 'swapoff /dev/sdb2', '2025-03-06 13:08:28'),
(117, 'swapon', 'Enable devices and files for swap space', 'Disk and Storage Management', 'swapon /dev/sdb2', '2025-03-06 13:08:28'),
(118, 'tar', 'An archiving utility', 'Archiving and Compression', 'tar -cvzf archive.tar.gz directory', '2025-03-06 13:08:28'),
(119, 'zip', 'Package and compress (archive) files', 'Archiving and Compression', 'zip archive.zip files', '2025-03-06 13:08:28'),
(120, 'unzip', 'Extract compressed files in a ZIP archive', 'Archiving and Compression', 'unzip archive.zip', '2025-03-06 13:08:28'),
(121, 'gzip', 'Compress or decompress files', 'Archiving and Compression', 'gzip file.txt', '2025-03-06 13:08:28'),
(122, 'gunzip', 'Decompress files created by gzip', 'Archiving and Compression', 'gunzip file.txt.gz', '2025-03-06 13:08:28'),
(123, 'bzip2', 'A block-sorting file compressor', 'Archiving and Compression', 'bzip2 file.txt', '2025-03-06 13:08:28'),
(124, 'bunzip2', 'A file compressor based on Burrows-Wheeler block sorting reversible transformation', 'Archiving and Compression', 'bunzip2 file.txt.bz2', '2025-03-06 13:08:28'),
(125, 'xz', 'File compression utility', 'Archiving and Compression', 'xz file.txt', '2025-03-06 13:08:28'),
(126, 'unxz', 'Decompress .xz files', 'Archiving and Compression', 'unxz file.txt.xz', '2025-03-06 13:08:28'),
(127, '7z', 'High compression ratio file archiver', 'Archiving and Compression', '7z a archive.7z files', '2025-03-06 13:08:28'),
(128, 'p7zip', '7-Zip file archiver', 'Archiving and Compression', 'p7zip a archive.7z files', '2025-03-06 13:08:28'),
(129, 'rar', 'Archiver for rar files', 'Archiving and Compression', 'rar a archive.rar files', '2025-03-06 13:08:28'),
(130, 'unrar', 'Extract files from rar archives', 'Archiving and Compression', 'unrar x archive.rar', '2025-03-06 13:08:28'),
(131, 'ar', 'Create, modify, and extract from archives', 'Archiving and Compression', 'ar -tv archive.ar', '2025-03-06 13:08:28'),
(132, 'cpio', 'Copy files to and from archives', 'Archiving and Compression', 'cpio -ivt < archive.cpio', '2025-03-06 13:08:28'),
(133, 'zcat', 'Compress or expand files', 'Archiving and Compression', 'zcat file.gz', '2025-03-06 13:08:28'),
(134, 'zless', 'File perusal filter for crt viewing of compressed text', 'Archiving and Compression', 'zless file.gz', '2025-03-06 13:08:28'),
(135, 'lzma', 'A file compressor with high compression ratio', 'Archiving and Compression', 'lzma file.txt', '2025-03-06 13:08:28'),
(136, 'xzcat', 'Decompress files to standard output', 'Archiving and Compression', 'xzcat file.txt.xz', '2025-03-06 13:08:28'),
(137, 'tar -zxvf', 'Extract a tar.gz archive', 'Archiving and Compression', 'tar -zxvf archive.tar.gz', '2025-03-06 13:08:28'),
(138, 'adduser', 'Add a user to the system', 'User Management', 'adduser user', '2025-03-06 13:08:28'),
(139, 'useradd', 'Create a new user or update default new user information', 'User Management', 'useradd user', '2025-03-06 13:08:28'),
(140, 'usermod', 'Modify a user account', 'User Management', 'usermod -aG sudo user', '2025-03-06 13:08:28'),
(141, 'deluser', 'Remove a user or group from the system', 'User Management', 'deluser user', '2025-03-06 13:08:28'),
(142, 'userdel', 'Delete a user account and related files', 'User Management', 'userdel -r user', '2025-03-06 13:08:28'),
(143, 'passwd', 'Change a user\'s password', 'User Management', 'passwd user', '2025-03-06 13:08:28'),
(144, 'groupadd', 'Create a new group', 'User Management', 'groupadd group', '2025-03-06 13:08:28'),
(145, 'groupmod', 'Modify a group', 'User Management', 'groupmod -n new_group old_group', '2025-03-06 13:08:28'),
(146, 'groupdel', 'Delete a group', 'User Management', 'groupdel group', '2025-03-06 13:08:28'),
(147, 'who', 'Show who is logged on', 'User Management', 'who', '2025-03-06 13:08:28'),
(148, 'w', 'Show who is logged on and what they are doing', 'User Management', 'w', '2025-03-06 13:08:28'),
(149, 'finger', 'User information lookup program', 'User Management', 'finger user', '2025-03-06 13:08:28'),
(150, 'last', 'Show listing of last logged in users', 'User Management', 'last', '2025-03-06 13:08:28'),
(151, 'login', 'Begin a new session on the system', 'User Management', 'login user', '2025-03-06 13:08:28'),
(152, 'logout', 'Exit from a login shell', 'User Management', 'logout', '2025-03-06 13:08:28'),
(153, 'visudo', 'Edit the sudoers file', 'User Management', 'visudo', '2025-03-06 13:08:28'),
(154, 'man', 'An interface to the system reference manuals', 'Miscellaneous Useful Commands', 'man ls', '2025-03-06 13:08:28'),
(155, 'history', 'Display or manipulate the history list', 'Miscellaneous Useful Commands', 'history', '2025-03-06 13:08:28'),
(156, 'clear', 'Clear the terminal screen', 'Miscellaneous Useful Commands', 'clear', '2025-03-06 13:08:28'),
(157, 'date', 'Show or set the system date and time', 'Miscellaneous Useful Commands', 'date', '2025-03-06 13:08:28'),
(158, 'cal', 'Display a calendar', 'Miscellaneous Useful Commands', 'cal', '2025-03-06 13:08:28'),
(159, 'uptime', 'Show how long the system has been running', 'Miscellaneous Useful Commands', 'uptime', '2025-03-06 13:08:28'),
(160, 'uname', 'Print system information', 'Miscellaneous Useful Commands', 'uname -a', '2025-03-06 13:08:28'),
(161, 'hostname', 'Show or set the system\'s host name', 'Miscellaneous Useful Commands', 'hostname', '2025-03-06 13:08:28'),
(162, 'bc', 'An arbitrary precision calculator language', 'Miscellaneous Useful Commands', 'bc', '2025-03-06 13:08:28'),
(163, 'expr', 'Evaluate expressions', 'Miscellaneous Useful Commands', 'expr 1 + 1', '2025-03-06 13:08:28'),
(164, 'seq', 'Print a sequence of numbers', 'Miscellaneous Useful Commands', 'seq 1 10', '2025-03-06 13:08:28'),
(165, 'yes', 'Output a string repeatedly until killed', 'Miscellaneous Useful Commands', 'yes', '2025-03-06 13:08:28'),
(166, 'sleep', 'Delay for a specified amount of time', 'Miscellaneous Useful Commands', 'sleep 10', '2025-03-06 13:08:28'),
(167, 'shutdown', 'Bring the system down', 'Miscellaneous Useful Commands', 'shutdown -h now', '2025-03-06 13:08:28'),
(168, 'reboot', 'Restart the system', 'Miscellaneous Useful Commands', 'reboot', '2025-03-06 13:08:28'),
(169, 'poweroff', 'Power off the system', 'Miscellaneous Useful Commands', 'poweroff', '2025-03-06 13:08:28'),
(170, 'systemctl', 'Control the systemd system and service manager', 'Miscellaneous Useful Commands', 'systemctl status apache2', '2025-03-06 13:08:28'),
(171, 'journalctl', 'Query the systemd journal', 'Miscellaneous Useful Commands', 'journalctl -xe', '2025-03-06 13:08:28'),
(172, 'dmesg', 'Print or control the kernel ring buffer', 'Miscellaneous Useful Commands', 'dmesg', '2025-03-06 13:08:28'),
(173, 'env', 'Run a program in a modified environment', 'Miscellaneous Useful Commands', 'env', '2025-03-06 13:08:28'),
(174, 'export', 'Set environment variables', 'Miscellaneous Useful Commands', 'export VAR=value', '2025-03-06 13:08:28'),
(175, 'printenv', 'Print all or part of the environment', 'Miscellaneous Useful Commands', 'printenv VAR', '2025-03-06 13:08:28'),
(176, 'set', 'Set or unset shell options and positional parameters', 'Miscellaneous Useful Commands', 'set', '2025-03-06 13:08:28'),
(177, 'unset', 'Remove shell variables or functions', 'Miscellaneous Useful Commands', 'unset VAR', '2025-03-06 13:08:28'),
(178, 'declare', 'Declare variables and/or give them attributes', 'Miscellaneous Useful Commands', 'declare -x VAR=value', '2025-03-06 13:08:28'),
(179, 'type', 'Write a description of command type', 'Miscellaneous Useful Commands', 'type ls', '2025-03-06 13:08:28'),
(180, 'which', 'Locate a command', 'Miscellaneous Useful Commands', 'which ls', '2025-03-06 13:08:28'),
(181, 'whereis', 'Locate the binary, source, and manual page files for a command', 'Miscellaneous Useful Commands', 'whereis ls', '2025-03-06 13:08:28'),
(182, 'apropos', 'Search the manual page names and descriptions', 'Miscellaneous Useful Commands', 'apropos keyword', '2025-03-06 13:08:28'),
(183, 'whatis', 'Display one-line manual page descriptions', 'Miscellaneous Useful Commands', 'whatis ls', '2025-03-06 13:08:28'),
(184, 'updatedb', 'Update the locate database', 'Miscellaneous Useful Commands', 'sudo updatedb', '2025-03-06 13:08:28'),
(185, 'xargs', 'Build and execute command lines from standard input', 'Miscellaneous Useful Commands', 'find . -name \"*.txt\" | xargs grep \"keyword\"', '2025-03-06 13:08:28'),
(186, 'tee', 'Read from standard input and write to standard output and files', 'Miscellaneous Useful Commands', 'ls -l | tee output.txt', '2025-03-06 13:08:28'),
(187, 'grep', 'Print lines matching a pattern', 'Miscellaneous Useful Commands', 'grep \"keyword\" file.txt', '2025-03-06 13:08:28'),
(188, 'awk', 'Pattern scanning and processing language', 'Miscellaneous Useful Commands', 'awk \'{print $1}\' file.txt', '2025-03-06 13:08:28'),
(189, 'cut', 'Remove sections from each line of files', 'Miscellaneous Useful Commands', 'cut -d \",\" -f1 file.csv', '2025-03-06 13:08:28'),
(190, 'nohup', 'Run a command immune to hangups, with output to a non-tty', 'Miscellaneous Useful Commands', 'nohup command &', '2025-03-06 13:08:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `linux_commands`
--
ALTER TABLE `linux_commands`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `linux_commands`
--
ALTER TABLE `linux_commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
