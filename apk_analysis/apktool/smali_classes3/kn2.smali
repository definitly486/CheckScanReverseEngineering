.class public final Lkn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkn2$c;,
        Lkn2$a;,
        Lkn2$b;,
        Lkn2$e;,
        Lkn2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "Ljava/lang/Integer;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkn2$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkn2$e<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkn2$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkn2$e<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lkn2;->a:Landroid/content/Context;

    iput-object p2, p0, Lkn2;->b:Lkn2$e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    sget-object p2, Lk47;->b:Lqz5;

    invoke-virtual {p4, p2}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Resources$Theme;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lkn2;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    :goto_0
    new-instance p4, Lnc5$a;

    new-instance v0, Loq5;

    invoke-direct {v0, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lkn2$d;

    iget-object p0, p0, Lkn2;->b:Lkn2$e;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p2, p3, p0, p1}, Lkn2$d;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Lkn2$e;I)V

    invoke-direct {p4, v0, v1}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p4
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    const/4 p0, 0x1

    return p0
.end method
