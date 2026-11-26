.class public final Lt77$a;
.super Lr0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt77;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public final synthetic f:Lt77;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt77<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt77;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt77<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lt77$a;->f:Lt77;

    invoke-direct {p0}, Lr0;-><init>()V

    invoke-virtual {p1}, Lv;->size()I

    move-result v0

    iput v0, p0, Lt77$a;->d:I

    iget p1, p1, Lt77;->e:I

    iput p1, p0, Lt77$a;->e:I

    return-void
.end method


# virtual methods
.method public final computeNext()V
    .locals 3

    iget v0, p0, Lt77$a;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr0;->done()V

    return-void

    :cond_0
    iget-object v0, p0, Lt77$a;->f:Lt77;

    iget-object v1, v0, Lt77;->c:[Ljava/lang/Object;

    iget v2, p0, Lt77$a;->e:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lr0;->setNext(Ljava/lang/Object;)V

    iget v1, p0, Lt77$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Lt77;->d:I

    rem-int/2addr v1, v0

    iput v1, p0, Lt77$a;->e:I

    iget v0, p0, Lt77$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lt77$a;->d:I

    return-void
.end method
