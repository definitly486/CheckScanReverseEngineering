.class public final Ll0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final d:Ll0$d;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Ll0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll0$d;

    invoke-direct {v0}, Ll0$d;-><init>()V

    sput-object v0, Ll0$d;->d:Ll0$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll0$d;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Ll0$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Ll0$d;->a:Ljava/lang/Runnable;

    .line 11
    iput-object p2, p0, Ll0$d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
