.class public final Lfy1;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lgy1;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lb24;

.field public final c:Lr14;

.field public final d:Lns;

.field public final e:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lps$b;",
            "Lps$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lps$b;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Landroidx/compose/ui/Alignment;

.field public final i:Landroidx/compose/ui/layout/ContentScale;

.field public final j:F

.field public final k:Z

.field public final l:Lss;


# direct methods
.method public constructor <init>(Lb24;Lr14;Lns;Lnl3;Lnl3;ILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Lss;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Lfy1;->b:Lb24;

    iput-object p2, p0, Lfy1;->c:Lr14;

    iput-object p3, p0, Lfy1;->d:Lns;

    iput-object p4, p0, Lfy1;->e:Lnl3;

    iput-object p5, p0, Lfy1;->f:Lnl3;

    iput p6, p0, Lfy1;->g:I

    iput-object p7, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    iput-object p8, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lfy1;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfy1;->k:Z

    iput-object p9, p0, Lfy1;->l:Lss;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 11

    new-instance v0, Lps$a;

    iget-object v1, p0, Lfy1;->d:Lns;

    iget-object v2, p0, Lfy1;->c:Lr14;

    iget-object v3, p0, Lfy1;->b:Lb24;

    invoke-direct {v0, v2, v3, v1}, Lps$a;-><init>(Lr14;Lb24;Lns;)V

    new-instance v5, Lps;

    invoke-direct {v5, v0}, Lps;-><init>(Lps$a;)V

    iget-object v1, p0, Lfy1;->e:Lnl3;

    iput-object v1, v5, Lps;->j:Lnl3;

    iget-object v1, p0, Lfy1;->f:Lnl3;

    iput-object v1, v5, Lps;->k:Lnl3;

    iget-object v1, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    iput-object v1, v5, Lps;->l:Landroidx/compose/ui/layout/ContentScale;

    iget v1, p0, Lfy1;->g:I

    iput v1, v5, Lps;->m:I

    iget-object v1, p0, Lfy1;->l:Lss;

    iput-object v1, v5, Lps;->n:Lss;

    invoke-virtual {v5, v0}, Lps;->c(Lps$a;)V

    iget-object v0, v3, Lb24;->o:Lw18;

    instance-of v1, v0, Lox1;

    if-eqz v1, :cond_0

    check-cast v0, Lox1;

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v4, Lgy1;

    iget-object v6, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    iget-object v7, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    iget v8, p0, Lfy1;->j:F

    iget-boolean v9, p0, Lfy1;->k:Z

    invoke-direct/range {v4 .. v10}, Lgy1;-><init>(Lps;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLox1;)V

    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lfy1;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lfy1;

    iget-object v0, p0, Lfy1;->b:Lb24;

    iget-object v1, p1, Lfy1;->b:Lb24;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lfy1;->c:Lr14;

    iget-object v1, p1, Lfy1;->c:Lr14;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfy1;->d:Lns;

    iget-object v1, p1, Lfy1;->d:Lns;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lfy1;->e:Lnl3;

    iget-object v1, p1, Lfy1;->e:Lnl3;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lfy1;->f:Lnl3;

    iget-object v1, p1, Lfy1;->f:Lnl3;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget v0, p0, Lfy1;->g:I

    iget v1, p1, Lfy1;->g:I

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    iget-object v1, p1, Lfy1;->h:Landroidx/compose/ui/Alignment;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    iget-object v1, p1, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget v0, p0, Lfy1;->j:F

    iget v1, p1, Lfy1;->j:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lfy1;->k:Z

    iget-boolean v1, p1, Lfy1;->k:Z

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object p0, p0, Lfy1;->l:Lss;

    iget-object p1, p1, Lfy1;->l:Lss;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lfy1;->b:Lb24;

    invoke-virtual {v0}, Lb24;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lfy1;->c:Lr14;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lfy1;->d:Lns;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lfy1;->e:Lnl3;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lfy1;->f:Lnl3;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lfy1;->g:I

    invoke-static {v3}, Landroidx/compose/ui/graphics/FilterQuality;->hashCode-impl(I)I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v2, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget v2, p0, Lfy1;->j:F

    const/16 v4, 0x3c1

    invoke-static {v2, v3, v4}, Ljn;->b(FII)I

    move-result v2

    iget-boolean v3, p0, Lfy1;->k:Z

    invoke-static {v2, v1, v3}, Ltg;->c(IIZ)I

    move-result v2

    iget-object p0, p0, Lfy1;->l:Lss;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    return v2
.end method

.method public final inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 4

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "request"

    iget-object v2, p0, Lfy1;->b:Lb24;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "imageLoader"

    iget-object v2, p0, Lfy1;->c:Lr14;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "modelEqualityDelegate"

    iget-object v2, p0, Lfy1;->d:Lns;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "transform"

    iget-object v2, p0, Lfy1;->e:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onState"

    iget-object v2, p0, Lfy1;->f:Lnl3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Lfy1;->g:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/FilterQuality;->box-impl(I)Landroidx/compose/ui/graphics/FilterQuality;

    move-result-object v1

    const-string v2, "filterQuality"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "alignment"

    iget-object v2, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "contentScale"

    iget-object v2, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Lfy1;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "colorFilter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "clipToBounds"

    iget-boolean v3, p0, Lfy1;->k:Z

    invoke-static {v3, v0, v1, p1}, Lil1;->c(ZLandroidx/compose/ui/platform/ValueElementSequence;Ljava/lang/String;Landroidx/compose/ui/platform/InspectorInfo;)Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "previewHandler"

    iget-object p0, p0, Lfy1;->l:Lss;

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p0

    const-string p1, "contentDescription"

    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lfy1;->g:I

    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentPainterElement(request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfy1;->b:Lb24;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageLoader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfy1;->c:Lr14;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", modelEqualityDelegate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfy1;->d:Lns;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", transform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfy1;->e:Lnl3;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", onState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfy1;->f:Lnl3;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filterQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", alignment="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentScale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lfy1;->j:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", colorFilter=null, clipToBounds="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lfy1;->k:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", previewHandler="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lfy1;->l:Lss;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", contentDescription=null)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 8

    check-cast p1, Lgy1;

    iget-object v0, p1, Lgy1;->g:Lps;

    invoke-virtual {v0}, Lps;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    iget-object v2, p1, Lz;->f:Lox1;

    new-instance v3, Lps$a;

    iget-object v4, p0, Lfy1;->d:Lns;

    iget-object v5, p0, Lfy1;->c:Lr14;

    iget-object v6, p0, Lfy1;->b:Lb24;

    invoke-direct {v3, v5, v6, v4}, Lps$a;-><init>(Lr14;Lb24;Lns;)V

    iget-object v4, p1, Lgy1;->g:Lps;

    iget-object v5, p0, Lfy1;->e:Lnl3;

    iput-object v5, v4, Lps;->j:Lnl3;

    iget-object v5, p0, Lfy1;->f:Lnl3;

    iput-object v5, v4, Lps;->k:Lnl3;

    iget-object v5, p0, Lfy1;->i:Landroidx/compose/ui/layout/ContentScale;

    iput-object v5, v4, Lps;->l:Landroidx/compose/ui/layout/ContentScale;

    iget v7, p0, Lfy1;->g:I

    iput v7, v4, Lps;->m:I

    iget-object v7, p0, Lfy1;->l:Lss;

    iput-object v7, v4, Lps;->n:Lss;

    invoke-virtual {v4, v3}, Lps;->c(Lps$a;)V

    invoke-virtual {v4}, Lps;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    iget-object v1, p0, Lfy1;->h:Landroidx/compose/ui/Alignment;

    iput-object v1, p1, Lz;->b:Landroidx/compose/ui/Alignment;

    iget-object v1, v6, Lb24;->o:Lw18;

    instance-of v3, v1, Lox1;

    if-eqz v3, :cond_0

    check-cast v1, Lox1;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p1, Lz;->f:Lox1;

    iput-object v5, p1, Lz;->c:Landroidx/compose/ui/layout/ContentScale;

    iget v1, p0, Lfy1;->j:F

    iput v1, p1, Lz;->d:F

    iget-boolean p0, p0, Lfy1;->k:Z

    iput-boolean p0, p1, Lz;->e:Z

    iget-object p0, p1, Lz;->f:Lox1;

    invoke-static {v2, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method
