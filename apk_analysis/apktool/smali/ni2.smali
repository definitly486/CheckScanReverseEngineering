.class public final synthetic Lni2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh8$a;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lni2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lni2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lni2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lni2;->b:Ljava/lang/Object;

    check-cast v0, Lpi2;

    iget-object v1, p0, Lni2;->c:Ljava/lang/Object;

    check-cast v1, Lhz;

    iget-object p0, p0, Lni2;->d:Ljava/lang/Object;

    check-cast p0, Lz03;

    iget-object v2, v0, Lpi2;->d:Lf13;

    invoke-interface {v2, v1, p0}, Lf13;->O(Lhz;Lz03;)Lcz;

    iget-object p0, v0, Lpi2;->a:Lpk9;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lpk9;->a(Ls29;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lni2;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object v1, p0, Lni2;->c:Ljava/lang/Object;

    check-cast v1, Lyads/cu3;

    iget-object p0, p0, Lni2;->d:Ljava/lang/Object;

    check-cast p0, Lyads/r04;

    check-cast p1, Lyads/pe;

    invoke-static {v0, v1, p0, p1}, Lyads/cj0;->b(Lyads/ne;Lyads/cu3;Lyads/r04;Lyads/pe;)V

    return-void
.end method
