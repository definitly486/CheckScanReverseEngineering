.class public final Lcom/google/protobuf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/n0;


# instance fields
.field public final a:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/protobuf/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    iput-object p0, p1, Lcom/google/protobuf/CodedOutputStream;->o:Lcom/google/protobuf/h;

    return-void
.end method


# virtual methods
.method public final a(ILfx0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->g0(ILfx0;)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->i0(II)V

    return-void
.end method

.method public final c(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->k0(IJ)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lcom/google/protobuf/f0;)V
    .locals 1

    check-cast p2, Lcom/google/protobuf/a0;

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->o:Lcom/google/protobuf/h;

    invoke-interface {p3, p2, v0}, Lcom/google/protobuf/f0;->a(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->u0(II)V

    return-void
.end method

.method public final e(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->m0(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->x0(IJ)V

    return-void
.end method

.method public final g(ILjava/lang/Object;Lcom/google/protobuf/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    check-cast p2, Lcom/google/protobuf/a0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->o0(ILcom/google/protobuf/a0;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method public final h(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lfx0;

    iget-object p0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/CodedOutputStream;

    if-eqz v0, :cond_0

    check-cast p2, Lfx0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->r0(ILfx0;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/protobuf/a0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->q0(ILcom/google/protobuf/a0;)V

    return-void
.end method
