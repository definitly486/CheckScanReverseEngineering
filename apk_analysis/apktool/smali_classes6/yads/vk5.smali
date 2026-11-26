.class public abstract Lyads/vk5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/j84;)Lyads/h84;
    .locals 3

    iget-object v0, p1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Lyads/ev;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lyads/vk5;->a(Lyads/j84;Ljava/nio/ByteBuffer;)Lyads/h84;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-object v2
.end method

.method public abstract a(Lyads/j84;Ljava/nio/ByteBuffer;)Lyads/h84;
.end method
