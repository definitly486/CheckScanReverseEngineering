.class public final Lyads/dc6;
.super Lsr5;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/ec6;


# direct methods
.method public constructor <init>(Lyads/ec6;)V
    .locals 1

    sget-object v0, Lyads/cc6;->b:Lyads/cc6;

    iput-object p1, p0, Lyads/dc6;->a:Lyads/ec6;

    invoke-direct {p0, v0}, Lsr5;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lze4;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/cc6;

    check-cast p2, Lyads/cc6;

    iget-object p1, p0, Lyads/dc6;->a:Lyads/ec6;

    iget-object p1, p1, Lyads/ec6;->a:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/dc6;->a:Lyads/ec6;

    iget-object p0, p0, Lyads/ec6;->b:Lxg5;

    invoke-interface {p0, p3}, Lxg5;->setValue(Ljava/lang/Object;)V

    return-void
.end method
