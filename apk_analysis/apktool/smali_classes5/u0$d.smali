.class public final Lu0$d;
.super Lu0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lu0<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final c:Lu0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lu0;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0<",
            "+TE;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lu0;-><init>()V

    iput-object p1, p0, Lu0$d;->c:Lu0;

    iput p2, p0, Lu0$d;->d:I

    sget-object v0, Lu0;->Companion:Lu0$a;

    invoke-virtual {p1}, Lv;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p1}, Lu0$a;->d(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lu0$d;->e:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Lu0;->Companion:Lu0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lu0$d;->e:I

    invoke-static {p1, v0}, Lu0$a;->b(II)V

    iget v0, p0, Lu0$d;->d:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lu0$d;->c:Lu0;

    invoke-virtual {p0, v0}, Lu0;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Lu0$d;->e:I

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lu0;->Companion:Lu0$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lu0$d;->e:I

    invoke-static {p1, p2, v0}, Lu0$a;->d(III)V

    new-instance v0, Lu0$d;

    iget v1, p0, Lu0$d;->d:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Lu0$d;->c:Lu0;

    invoke-direct {v0, p0, p1, v1}, Lu0$d;-><init>(Lu0;II)V

    return-object v0
.end method
