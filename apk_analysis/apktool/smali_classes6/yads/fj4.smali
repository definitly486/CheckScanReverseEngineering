.class public final Lyads/fj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tu4;


# instance fields
.field public final synthetic a:Lyads/ij4;


# direct methods
.method public constructor <init>(Lyads/ij4;)V
    .locals 0

    iput-object p1, p0, Lyads/fj4;->a:Lyads/ij4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ou4;)V
    .locals 2

    iget-object v0, p0, Lyads/fj4;->a:Lyads/ij4;

    invoke-virtual {v0}, Lyads/ij4;->g()Lyads/ok4;

    move-result-object v0

    check-cast v0, Lyads/ch4;

    invoke-virtual {v0}, Lyads/ch4;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-class v1, Lyads/fj4;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lyads/fj4;->a:Lyads/ij4;

    invoke-static {p0}, Lyads/ij4;->a(Lyads/ij4;)Lyads/hc4;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lyads/hc4;->a(Lyads/ou4;Z)V

    return-void
.end method
