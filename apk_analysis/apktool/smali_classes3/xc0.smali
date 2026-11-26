.class public Lxc0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc0$a;,
        Lxc0$b;
    }
.end annotation


# static fields
.field public static final d:Lxc0$a;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lxc0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lxc0$a;

    sget-object v1, Lxc0$b;->PRESENT:Lxc0$b;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v2, v2, v3, v1}, Lxc0;-><init>(ZZILxc0$b;)V

    sput-object v0, Lxc0;->d:Lxc0$a;

    new-instance v0, Lxc0;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2, v3, v1}, Lxc0;-><init>(ZZILxc0$b;)V

    new-instance v0, Lxc0;

    const/16 v3, 0x4c

    invoke-direct {v0, v2, v4, v3, v1}, Lxc0;-><init>(ZZILxc0$b;)V

    new-instance v0, Lxc0;

    const/16 v3, 0x40

    invoke-direct {v0, v2, v4, v3, v1}, Lxc0;-><init>(ZZILxc0$b;)V

    return-void
.end method

.method public constructor <init>(ZZILxc0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxc0;->a:Z

    iput-boolean p2, p0, Lxc0;->b:Z

    iput-object p4, p0, Lxc0;->c:Lxc0$b;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
