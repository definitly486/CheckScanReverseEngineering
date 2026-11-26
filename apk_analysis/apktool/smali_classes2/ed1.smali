.class public final Led1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/compose/ui/text/font/FontFamily;

.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:Landroidx/compose/ui/text/TextStyle;

.field public final d:Landroidx/compose/ui/text/TextStyle;

.field public final e:Landroidx/compose/ui/text/TextStyle;

.field public final f:Landroidx/compose/ui/text/TextStyle;

.field public final g:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led1;->a:Landroidx/compose/ui/text/font/FontFamily;

    iput-object p2, p0, Led1;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Led1;->c:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Led1;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p5, p0, Led1;->e:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Led1;->f:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Led1;->g:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Led1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Led1;

    iget-object v0, p0, Led1;->a:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v1, p1, Led1;->a:Landroidx/compose/ui/text/font/FontFamily;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Led1;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Led1;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Led1;->c:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Led1;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Led1;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Led1;->d:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Led1;->e:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Led1;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Led1;->f:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p1, Led1;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Led1;->g:Landroidx/compose/ui/text/TextStyle;

    iget-object p1, p1, Led1;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/TextStyle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Led1;->a:Landroidx/compose/ui/text/font/FontFamily;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Led1;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, v0, v1}, Ljn;->c(Landroidx/compose/ui/text/TextStyle;II)I

    move-result v0

    iget-object v2, p0, Led1;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, v0, v1}, Ljn;->c(Landroidx/compose/ui/text/TextStyle;II)I

    move-result v0

    iget-object v2, p0, Led1;->d:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, v0, v1}, Ljn;->c(Landroidx/compose/ui/text/TextStyle;II)I

    move-result v0

    iget-object v2, p0, Led1;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, v0, v1}, Ljn;->c(Landroidx/compose/ui/text/TextStyle;II)I

    move-result v0

    iget-object v2, p0, Led1;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, v0, v1}, Ljn;->c(Landroidx/compose/ui/text/TextStyle;II)I

    move-result v0

    iget-object p0, p0, Led1;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckscanTypography(fontFamily="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Led1;->a:Landroidx/compose/ui/text/font/FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medium16Height24="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led1;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medium18Height24="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led1;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medium22Height28="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led1;->d:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", regular14Height14="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led1;->e:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", regular12Height20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Led1;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", regular16Height24="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Led1;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
