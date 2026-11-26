.class public final Lcom/google/android/gms/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field public static final a:Lbec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsec;

    invoke-direct {v0}, Lsec;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lbec;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Lbec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
