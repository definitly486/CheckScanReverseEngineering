.class public final Luf4$a;
.super Luf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luf4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Luf4;-><init>()V

    iput p1, p0, Luf4;->b:F

    iput p2, p0, Luf4$a;->c:F

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Luf4$a;

    iget v1, p0, Luf4;->b:F

    iget p0, p0, Luf4$a;->c:F

    invoke-direct {v0, v1, p0}, Luf4$a;-><init>(FF)V

    return-object v0
.end method

.method public final e()Luf4$a;
    .locals 2

    new-instance v0, Luf4$a;

    iget v1, p0, Luf4;->b:F

    iget p0, p0, Luf4$a;->c:F

    invoke-direct {v0, v1, p0}, Luf4$a;-><init>(FF)V

    return-object v0
.end method

.method public final h()Ljava/lang/Float;
    .locals 0

    iget p0, p0, Luf4$a;->c:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
