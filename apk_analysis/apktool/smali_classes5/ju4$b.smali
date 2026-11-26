.class public final Lju4$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lju4;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lju4;


# direct methods
.method public constructor <init>(Lju4;)V
    .locals 0

    iput-object p1, p0, Lju4$b;->f:Lju4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Throwable;

    const-wide v0, 0x404be0be0ded288dL    # 55.7558

    const-wide v2, 0x4042cf03afb7e910L    # 37.6173

    iget-object p0, p0, Lju4$b;->f:Lju4;

    invoke-virtual {p0, v0, v1, v2, v3}, Lju4;->f(DD)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
