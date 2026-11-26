.class public final Lv59$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv59;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ls59;

.field public final synthetic g:Lc31;


# direct methods
.method public constructor <init>(Ls59;Lc31;)V
    .locals 0

    iput-object p1, p0, Lv59$a;->f:Ls59;

    iput-object p2, p0, Lv59$a;->g:Lc31;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Lu59;

    iget-object v1, p0, Lv59$a;->g:Lc31;

    iget-object p0, p0, Lv59$a;->f:Ls59;

    invoke-direct {v0, p0, v1, p1}, Lu59;-><init>(Ls59;Lc31;Z)V

    invoke-virtual {p0, v0}, Ls59;->f(Lll3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
