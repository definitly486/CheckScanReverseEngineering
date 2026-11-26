.class public final Lxc5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ldc4;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lxc5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxc5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lxc5;->f:Lxc5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldc4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    iput-boolean p0, p1, Ldc4;->c:Z

    iput-boolean p0, p1, Ldc4;->b:Z

    const/4 p0, 0x0

    iput-boolean p0, p1, Ldc4;->a:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
