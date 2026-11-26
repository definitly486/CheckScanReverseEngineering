.class public final synthetic Ld6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzmz;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld6c;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iput-object p2, p0, Ld6c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    sget v0, Lyu3;->a:I

    sget v0, Lmg5;->p:I

    new-instance v0, Lmg5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lu1;-><init>(IB)V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lmg5$a;->c:J

    iput-wide v2, v0, Lmg5$a;->d:J

    iput v1, v0, Lmg5$a;->e:I

    iget-object v2, p0, Ld6c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lu1;->n([B)Lu1;

    iget-object v2, v0, Lu1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lu1;->k()V

    :cond_0
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lu1;->n([B)Lu1;

    invoke-virtual {v0}, Lu1;->j()Ltu3$a;

    move-result-object v0

    iget-object v0, v0, Ltu3$a;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p0, p0, Ld6c;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmz;->a:Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
