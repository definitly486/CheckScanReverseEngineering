.class public final Lg07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lsl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsl<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lsl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsl<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ldl;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsl;Lhl;Ldl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg07;->a:Ljava/lang/String;

    iput-object p2, p0, Lg07;->b:Lsl;

    iput-object p3, p0, Lg07;->c:Lsl;

    iput-object p4, p0, Lg07;->d:Ldl;

    iput-boolean p5, p0, Lg07;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lf07;

    invoke-direct {p2, p1, p3, p0}, Lf07;-><init>(Lox4;Lnd0;Lg07;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg07;->b:Lsl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg07;->c:Lsl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
