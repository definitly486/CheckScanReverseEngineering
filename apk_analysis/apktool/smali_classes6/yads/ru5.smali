.class public final Lyads/ru5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fr;


# instance fields
.field public final synthetic a:Lyads/uu5;


# direct methods
.method public constructor <init>(Lyads/uu5;)V
    .locals 0

    iput-object p1, p0, Lyads/ru5;->a:Lyads/uu5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/kr;)V
    .locals 0

    iget-object p0, p0, Lyads/ru5;->a:Lyads/uu5;

    iget-object p0, p0, Lyads/uu5;->I:Lyads/fq;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lyads/kr;->b:I

    check-cast p0, Lyads/hq;

    iget-object p0, p0, Lyads/hq;->a:Lyads/a62;

    iget-object p0, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p0, p1}, Lyads/pb5;->setCurrentItem(I)V

    return-void
.end method

.method public final b(Lyads/kr;)V
    .locals 4

    iget-object v0, p0, Lyads/ru5;->a:Lyads/uu5;

    iget-object v1, v0, Lyads/uu5;->I:Lyads/fq;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p1, Lyads/kr;->b:I

    iget-object v0, v0, Lyads/uu5;->J:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kq;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/t02;

    iget-object p1, p1, Lyads/t02;->a:Lyads/t52;

    iget-object p1, p1, Lyads/t52;->c:Lyads/xr0;

    :goto_0
    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/ru5;->a:Lyads/uu5;

    iget-object p0, p0, Lyads/uu5;->I:Lyads/fq;

    check-cast p0, Lyads/hq;

    iget-object p0, p0, Lyads/hq;->a:Lyads/a62;

    iget-object p0, p0, Lyads/oq;->j:Lyads/e62;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lyads/xr0;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    sget v1, Lyads/cr3;->a:I

    sget-object v1, Lyads/vj5;->b:[Lyads/vj5;

    sget v1, Lyads/rv3;->a:I

    :cond_2
    iget-object v1, p0, Lyads/e62;->a:Lyads/tt;

    iget-object v2, v1, Lyads/tt;->a:Lyads/vq0;

    iget-object v1, v1, Lyads/tt;->b:Lyads/fs2;

    iget-object p0, p0, Lyads/e62;->b:Lyads/bt0;

    if-eqz v2, :cond_3

    move-object v3, v2

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_4

    iget-object v0, v3, Lyads/vq0;->R:Lyads/lu0;

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v3, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2, v1, p1, v0}, Lyads/bt0;->a(Lyads/vh2;Lyads/fs2;Lyads/xr0;Lyads/lu0;)Z

    :cond_6
    :goto_2
    return-void
.end method
