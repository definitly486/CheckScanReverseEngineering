.class public final Lhs8;
.super Lby4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lby4<",
        "Lbq2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lrx4;

.field public final synthetic d:Lby4;

.field public final synthetic e:Lbq2;


# direct methods
.method public constructor <init>(Lrx4;Lby4;Lbq2;)V
    .locals 0

    iput-object p1, p0, Lhs8;->c:Lrx4;

    iput-object p2, p0, Lhs8;->d:Lby4;

    iput-object p3, p0, Lhs8;->e:Lbq2;

    invoke-direct {p0}, Lby4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrx4;)Ljava/lang/Object;
    .locals 12

    iget v0, p1, Lrx4;->a:F

    iget v1, p1, Lrx4;->b:F

    iget-object v2, p1, Lrx4;->c:Ljava/lang/Object;

    check-cast v2, Lbq2;

    iget-object v2, v2, Lbq2;->a:Ljava/lang/String;

    iget-object v3, p1, Lrx4;->d:Ljava/lang/Object;

    check-cast v3, Lbq2;

    iget-object v3, v3, Lbq2;->a:Ljava/lang/String;

    iget v4, p1, Lrx4;->e:F

    iget v5, p1, Lrx4;->f:F

    iget v6, p1, Lrx4;->g:F

    iget-object v7, p0, Lhs8;->c:Lrx4;

    iput v0, v7, Lrx4;->a:F

    iput v1, v7, Lrx4;->b:F

    iput-object v2, v7, Lrx4;->c:Ljava/lang/Object;

    iput-object v3, v7, Lrx4;->d:Ljava/lang/Object;

    iput v4, v7, Lrx4;->e:F

    iput v5, v7, Lrx4;->f:F

    iput v6, v7, Lrx4;->g:F

    iget-object v0, p0, Lhs8;->d:Lby4;

    iget-object v0, v0, Lby4;->b:Lbz7;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lrx4;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object p1, p1, Lrx4;->d:Ljava/lang/Object;

    :goto_0
    check-cast p1, Lbq2;

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lrx4;->c:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object v1, p1, Lbq2;->b:Ljava/lang/String;

    iget v2, p1, Lbq2;->c:F

    iget-object v3, p1, Lbq2;->d:Lbq2$a;

    iget v4, p1, Lbq2;->e:I

    iget v5, p1, Lbq2;->f:F

    iget v6, p1, Lbq2;->g:F

    iget v7, p1, Lbq2;->h:I

    iget v8, p1, Lbq2;->i:I

    iget v9, p1, Lbq2;->j:F

    iget-boolean v10, p1, Lbq2;->k:Z

    iget-object v11, p1, Lbq2;->l:Landroid/graphics/PointF;

    iget-object p1, p1, Lbq2;->m:Landroid/graphics/PointF;

    iget-object p0, p0, Lhs8;->e:Lbq2;

    iput-object v0, p0, Lbq2;->a:Ljava/lang/String;

    iput-object v1, p0, Lbq2;->b:Ljava/lang/String;

    iput v2, p0, Lbq2;->c:F

    iput-object v3, p0, Lbq2;->d:Lbq2$a;

    iput v4, p0, Lbq2;->e:I

    iput v5, p0, Lbq2;->f:F

    iput v6, p0, Lbq2;->g:F

    iput v7, p0, Lbq2;->h:I

    iput v8, p0, Lbq2;->i:I

    iput v9, p0, Lbq2;->j:F

    iput-boolean v10, p0, Lbq2;->k:Z

    iput-object v11, p0, Lbq2;->l:Landroid/graphics/PointF;

    iput-object p1, p0, Lbq2;->m:Landroid/graphics/PointF;

    return-object p0
.end method
