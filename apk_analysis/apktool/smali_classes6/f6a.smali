.class public final synthetic Lf6a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf6a;->b:F

    iput p2, p0, Lf6a;->c:F

    iput p3, p0, Lf6a;->d:F

    iput p4, p0, Lf6a;->e:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v4, p0, Lf6a;->d:F

    iget v5, p0, Lf6a;->e:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lf6a;->b:F

    iget v3, p0, Lf6a;->c:F

    invoke-static/range {v0 .. v5}, Lyads/q35;->a(FFFFFF)[Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
