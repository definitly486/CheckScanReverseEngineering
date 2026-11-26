.class public final synthetic Lrz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/jk1;

.field public final synthetic c:Lyads/bn1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/ek1;

.field public final synthetic f:Lyads/ek1;


# direct methods
.method public synthetic constructor <init>(Lyads/jk1;Lyads/bn1;Lyads/tt;Lyads/ek1;Lyads/ek1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrz9;->b:Lyads/jk1;

    iput-object p2, p0, Lrz9;->c:Lyads/bn1;

    iput-object p3, p0, Lrz9;->d:Lyads/tt;

    iput-object p4, p0, Lrz9;->e:Lyads/ek1;

    iput-object p5, p0, Lrz9;->f:Lyads/ek1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lrz9;->b:Lyads/jk1;

    iget-object v1, p0, Lrz9;->c:Lyads/bn1;

    iget-object v2, p0, Lrz9;->d:Lyads/tt;

    iget-object v3, p0, Lrz9;->e:Lyads/ek1;

    iget-object v4, p0, Lrz9;->f:Lyads/ek1;

    invoke-static/range {v0 .. v5}, Lyads/jk1;->a(Lyads/jk1;Lyads/bn1;Lyads/tt;Lyads/ek1;Lyads/ek1;I)Lj59;

    move-result-object p0

    return-object p0
.end method
