/* config.h. Generated by cmake from config.h.cmake */

#ifndef _DBUS_CONFIG_H
#define _DBUS_CONFIG_H
/****************************/
/* indicate that we are building with cmake */
#define DBUS_CMAKE 1

/* On Windows, we expect to be using msvcrt.dll-compatible printf
 * (%I64u instead of %llu) unless otherwise specified. This must be
 * done near the beginning of config.h, before we have included any
 * system headers that might check the value of this macro. */
#ifndef __USE_MINGW_ANSI_STDIO
#   define __USE_MINGW_ANSI_STDIO 0
#endif

@AUTOPACKAGE_CONFIG_H_TEMPLATE@

/*
 * Variables defined by AC_DEFINE in ../configure.ac
 * should be placed in this file
*/

/* AC_C_BIGENDIAN */
#cmakedefine WORDS_BIGENDIAN

/* Opt-in to modern APIs and thread-safety for Solaris. In the Autotools
 * build system we do the equivalent of this by appending to CFLAGS
 * in configure.ac */
#ifdef __sun
# define __EXTENSIONS__
# define _POSIX_PTHREAD_SEMANTICS
# define _REENTRANT
# define _XOPEN_SOURCE 500
#endif

#cmakedefine DBUS_CONSOLE_AUTH_DIR "@DBUS_CONSOLE_AUTH_DIR@"
#cmakedefine DBUS_DATADIR  "@DBUS_DATADIR@"
#cmakedefine DBUS_BINDIR   "@DBUS_BINDIR@"
#cmakedefine DBUS_PREFIX "@DBUS_PREFIX@"
#cmakedefine DBUS_SYSTEM_CONFIG_FILE  "@DBUS_SYSTEM_CONFIG_FILE@"
#cmakedefine DBUS_SESSION_CONFIG_FILE "@DBUS_SESSION_CONFIG_FILE@"
#cmakedefine DBUS_SESSION_SOCKET_DIR "@DBUS_SESSION_SOCKET_DIR@"
#cmakedefine DBUS_DAEMON_NAME "@DBUS_DAEMON_NAME@"
#cmakedefine DBUS_SYSTEM_BUS_DEFAULT_ADDRESS  "@DBUS_SYSTEM_BUS_DEFAULT_ADDRESS@"
#cmakedefine DBUS_SESSION_BUS_CONNECT_ADDRESS  "@DBUS_SESSION_BUS_CONNECT_ADDRESS@"
#cmakedefine DBUS_MACHINE_UUID_FILE "@DBUS_MACHINE_UUID_FILE@"
#cmakedefine DBUS_DAEMONDIR "@DBUS_DAEMONDIR@"
#cmakedefine DBUS_RUNSTATEDIR "@DBUS_RUNSTATEDIR@"

#cmakedefine DBUS_ENABLE_STATS
#cmakedefine ENABLE_TRADITIONAL_ACTIVATION

#define TEST_LISTEN       "@TEST_LISTEN@"

// test binaries
#define DBUS_EXEEXT "@EXEEXT@"

/* Some dbus features */
#cmakedefine DBUS_ENABLE_ANSI 1
#cmakedefine DBUS_ENABLE_VERBOSE_MODE 1
#cmakedefine DBUS_DISABLE_ASSERT 1
#ifndef DBUS_DISABLE_ASSERT
#  define DBUS_ENABLE_ASSERT 1
#endif
#cmakedefine DBUS_DISABLE_CHECKS 1
#ifndef DBUS_DISABLE_CHECKS
#  define DBUS_ENABLE_CHECKS 1
#endif
#cmakedefine DBUS_ENABLE_EMBEDDED_TESTS 1
#cmakedefine DBUS_ENABLE_MODULAR_TESTS 1
#cmakedefine DBUS_USE_OUTPUT_DEBUG_STRING 1

/* xmldocs */
/* doxygen */
#cmakedefine DBUS_GCOV_ENABLED 1

/* selinux */
/* kqueue */
#cmakedefine HAVE_CONSOLE_OWNER_FILE 1
#define DBUS_CONSOLE_OWNER_FILE "@DBUS_CONSOLE_OWNER_FILE@"

#cmakedefine DBUS_BUILD_X11 1
/* For the moment, the cmake build system doesn't have an equivalent of
 * the autoconf build system's --disable-x11-autolaunch */
#ifdef DBUS_BUILD_X11
# define DBUS_ENABLE_X11_AUTOLAUNCH 1
#endif

/* A 'va_copy' style function */
#cmakedefine DBUS_VA_COPY @DBUS_VA_COPY@

/* for msvc */
#define _DBUS_VA_COPY_ASSIGN(a1,a2) { a1 = a2; }

#cmakedefine DBUS_WITH_GLIB 1
#cmakedefine GLIB_VERSION_MIN_REQUIRED @GLIB_VERSION_MIN_REQUIRED@
#cmakedefine GLIB_VERSION_MAX_ALLOWED  @GLIB_VERSION_MAX_ALLOWED@

// headers
#cmakedefine HAVE_ALLOCA_H 1
#cmakedefine HAVE_BYTESWAP_H 1
#cmakedefine HAVE_CRT_EXTERNS_H 1

/* Define to 1 if you have dirent.h */
#cmakedefine   HAVE_DIRENT_H 1

#cmakedefine HAVE_DLFCN_H 1

/* Define to 1 if you have errno.h */
#cmakedefine   HAVE_ERRNO_H 1

#cmakedefine HAVE_EXECINFO_H 1
#cmakedefine HAVE_EXPAT_H 1

/* Define to 1 if you have grp.h */
#cmakedefine   HAVE_GRP_H 1

/* Define to 1 if you have inttypes.h */
#cmakedefine   HAVE_INTTYPES_H 1

/* Define to 1 if you have io.h */
#cmakedefine   HAVE_IO_H 1

/* Define to 1 if you have locale.h */
#cmakedefine   HAVE_LOCALE_H 1

#cmakedefine HAVE_MEMORY_H 1

/* Define to 1 if you have poll */
#cmakedefine    HAVE_POLL 1

/* Define to 1 if you have signal.h */
#cmakedefine   HAVE_SIGNAL_H 1

/* Define to 1 if you have stdint.h */
#cmakedefine   HAVE_STDINT_H 1

#cmakedefine HAVE_STDLIB_H 1

/* Define to 1 if you have stdio.h */
#cmakedefine   HAVE_STDIO_H 1

#cmakedefine HAVE_STRINGS_H 1
#cmakedefine HAVE_STRING_H 1
#cmakedefine HAVE_SYSLOG_H 1
#cmakedefine HAVE_SYS_EVENTS_H 1
#cmakedefine HAVE_SYS_INOTIFY_H 1
#cmakedefine HAVE_SYS_PRCTL_H 1
#cmakedefine HAVE_SYS_RANDOM_H 1
#cmakedefine HAVE_SYS_RESOURCE_H 1
#cmakedefine HAVE_SYS_STAT_H 1

/* Define to 1 if you have sys/syslimits.h */
#cmakedefine   HAVE_SYS_SYSLIMITS_H 1

/* Define to 1 if you have sys/time.h */
#cmakedefine    HAVE_SYS_TIME_H 1

#cmakedefine HAVE_SYS_TYPES_H 1

#cmakedefine HAVE_SYS_UIO_H 1

/* Define to 1 if you have sys/wait.h */
#cmakedefine    HAVE_SYS_WAIT_H 1

/* Define to 1 if you have time.h */
#cmakedefine   HAVE_TIME_H 1

/* Define to 1 if you have unistd.h */
#cmakedefine   HAVE_UNISTD_H 1

/* Define to 1 if you have ws2tcpip.h */
#cmakedefine   HAVE_WS2TCPIP_H 1

// symbols
/* Define to 1 if you have backtrace */
#cmakedefine   HAVE_BACKTRACE 1

/* Define to 1 if you have getgrouplist */
#cmakedefine   HAVE_GETGROUPLIST 1

/* Define to 1 if you have getpeerucred */
#cmakedefine   HAVE_GETPEERUCRED 1

/* Define to 1 if you have nanosleep */
#cmakedefine   HAVE_NANOSLEEP 1

/* Define to 1 if you have getpwnam_r */
#cmakedefine   HAVE_GETPWNAM_R 1

/* Define to 1 if you have socketpair */
#cmakedefine   HAVE_SOCKETPAIR 1

/* Define to 1 if you have setenv */
#cmakedefine   HAVE_SETENV 1

/* Define to 1 if you have unsetenv */
#cmakedefine   HAVE_UNSETENV 1

/* Define to 1 if you have clearenv */
#cmakedefine   HAVE_CLEARENV 1

/* Define to 1 if you have closefrom */
#cmakedefine   HAVE_CLOSEFROM 1

/* Define to 1 if you have close_range */
#cmakedefine   HAVE_CLOSE_RANGE 1

/* Define to 1 if you have writev */
#cmakedefine   HAVE_WRITEV 1

/* Define to 1 if you have socklen_t */
#cmakedefine   HAVE_SOCKLEN_T 1

/* Define to 1 if you have setlocale */
#cmakedefine   HAVE_SETLOCALE 1

/* Define to 1 if you have localeconv */
#cmakedefine   HAVE_LOCALECONV 1

/* Define to 1 if you have strtoll */
#cmakedefine   HAVE_STRTOLL 1

/* Define to 1 if you have strtoull */
#cmakedefine   HAVE_STRTOULL 1

/* Define to 1 if you have pip2 */
#cmakedefine   HAVE_PIPE2 1

#cmakedefine HAVE_ACCEPT4 1

/* Have dirfd function */
#cmakedefine HAVE_DIRFD 1

/* Have the ddfd member of DIR */
#cmakedefine HAVE_DDFD 1

#cmakedefine HAVE_INOTIFY_INIT1 1
#cmakedefine HAVE_GETRANDOM 1
#cmakedefine HAVE_GETRLIMIT 1
#cmakedefine HAVE_PRCTL 1
#cmakedefine HAVE_PRLIMIT 1
#cmakedefine HAVE_RAISE 1
#cmakedefine HAVE_SETRLIMIT 1
#cmakedefine HAVE_UNIX_FD_PASSING 1
#cmakedefine HAVE_SYSTEMD
#cmakedefine HAVE_VASPRINTF 1
#cmakedefine HAVE_VSNPRINTF 1

/* Define to use epoll(4) on Linux */
#cmakedefine DBUS_HAVE_LINUX_EPOLL 1

/* Use the gcc __sync extension */
#cmakedefine01 DBUS_USE_SYNC
#cmakedefine HAVE_VASPRINTF 1
#cmakedefine HAVE_VSNPRINTF 1

/* whether -export-dynamic was passed to libtool */
#cmakedefine DBUS_BUILT_R_DYNAMIC 1

/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
#cmakedefine _GNU_SOURCE 1
#endif

// structs
/* Define to 1 if you have struct cmsgred */
#cmakedefine    HAVE_CMSGCRED 1

#cmakedefine FD_SETSIZE @FD_SETSIZE@

#cmakedefine DBUS_USER "@DBUS_USER@"
#cmakedefine DBUS_TEST_USER "@DBUS_TEST_USER@"
#cmakedefine DBUS_TEST_EXEC "@DBUS_TEST_EXEC@"

// system type defines
#if defined(_WIN32) || defined(_WIN64) || defined (_WIN32_WCE)
# define DBUS_WIN
# ifdef _WIN32_WCE
#  define DBUS_WINCE
# else
#  define DBUS_WIN32
   /* Define to the minimum supported Windows version (0x0600 is Vista) */
#  define _WIN32_WINNT 0x0600
# endif
#else
# define DBUS_UNIX
#endif 

#if defined(_WIN32) || defined(_WIN64)
// mingw mode_t
# ifdef HAVE_STDIO_H
#  include <stdio.h>
# endif
# ifndef _MSC_VER
#  define uid_t int
#  define gid_t int
# else
#  define snprintf _snprintf
   typedef int mode_t;
#  if !defined(_WIN32_WCE)
#    define strtoll _strtoi64
#    define strtoull _strtoui64
#    define HAVE_STRTOLL 1
#    define HAVE_STRTOULL 1
#  endif
# endif
#endif	// defined(_WIN32) || defined(_WIN64)

#ifdef interface
#undef interface
#endif

#ifndef SIGHUP
#define SIGHUP	1
#endif

#cmakedefine DBUS_VERBOSE_C_S 1
#ifdef DBUS_VERBOSE_C_S
#define _dbus_verbose_C_S printf
#else
#define _dbus_verbose_C_S _dbus_verbose
#endif 

# if defined(_MSC_VER) && !defined(inline)
#define inline __inline
#endif

#ifdef DBUS_WIN
#define FD_SETSIZE @FD_SETSIZE@
#endif

#cmakedefine01 HAVE_DECL_ENVIRON
#cmakedefine01 HAVE_DECL_LOG_PERROR
#cmakedefine01 HAVE_DECL_MSG_NOSIGNAL

#endif  // _DBUS_CONFIG_H
