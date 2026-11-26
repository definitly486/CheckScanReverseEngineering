.class public final Lcom/google/common/collect/v$a;
.super Lcom/google/common/collect/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u$a<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public b:I

.field public final synthetic c:Lcom/google/common/collect/v;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/v$a;->c:Lcom/google/common/collect/v;

    iget-object p1, p1, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/v$a;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/v$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/v$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCount()I
    .locals 5

    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    iget-object v1, p0, Lcom/google/common/collect/v$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/v$a;->c:Lcom/google/common/collect/v;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v4, v2, Lcom/google/common/collect/v;->c:I

    if-ge v0, v4, :cond_0

    iget-object v4, v2, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object v0, v4, v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/common/collect/v;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/v$a;->b:I

    :cond_1
    iget p0, p0, Lcom/google/common/collect/v$a;->b:I

    if-ne p0, v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v0, v2, Lcom/google/common/collect/v;->b:[I

    aget p0, v0, p0

    return p0
.end method
