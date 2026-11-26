.class public final Lur7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Lcl;

.field public final e:Lfl;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcl;Lfl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lur7;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lur7;->a:Z

    iput-object p3, p0, Lur7;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lur7;->d:Lcl;

    iput-object p5, p0, Lur7;->e:Lfl;

    iput-boolean p6, p0, Lur7;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lea3;

    invoke-direct {p2, p1, p3, p0}, Lea3;-><init>(Lox4;Lnd0;Lur7;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lur7;->a:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
