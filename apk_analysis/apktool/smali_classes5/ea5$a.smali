.class public final Lea5$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public c:Lll9;

.field public final synthetic d:Lea5;


# direct methods
.method public constructor <init>(Lea5;)V
    .locals 0

    iput-object p1, p0, Lea5$a;->d:Lea5;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lea5$a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lea5$a;->c:Lll9;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lll9;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object p0, p0, Lea5$a;->c:Lll9;

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lll9;->b(B)V

    return-void

    :cond_0
    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 70
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 71
    invoke-virtual {p0, v1, v2, v0}, Lea5$a;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    iget-object v0, p0, Lea5$a;->d:Lea5;

    iget-object v0, v0, Lea5;->h:Lx65;

    iget-object v1, p0, Lea5$a;->c:Lll9;

    iget-object v2, p0, Lea5$a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/16 v1, 0x1000

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lx65;->a(I)Lsv5;

    move-result-object v1

    iput-object v1, p0, Lea5$a;->c:Lll9;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    iget-object v1, p0, Lea5$a;->c:Lll9;

    invoke-interface {v1}, Lll9;->a()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lea5$a;->c:Lll9;

    if-nez v1, :cond_1

    invoke-interface {v3}, Lll9;->q()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lx65;->a(I)Lsv5;

    move-result-object v1

    iput-object v1, p0, Lea5$a;->c:Lll9;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, p1, p2, v1}, Lll9;->write([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    return-void
.end method
