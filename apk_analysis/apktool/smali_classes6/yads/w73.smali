.class public final Lyads/w73;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/w73;->a:I

    iput p2, p0, Lyads/w73;->b:I

    iput p3, p0, Lyads/w73;->c:I

    iput p4, p0, Lyads/w73;->d:I

    iput p5, p0, Lyads/w73;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lyads/w73;->b:I

    iget v1, p0, Lyads/w73;->c:I

    add-int/2addr v0, v1

    iget p0, p0, Lyads/w73;->d:I

    add-int/2addr v0, p0

    return v0
.end method
