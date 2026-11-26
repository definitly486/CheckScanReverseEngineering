.class public final Lck1;
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

.field public final c:Lhl;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsl;Lhl;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsl<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lhl;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck1;->a:Ljava/lang/String;

    iput-object p2, p0, Lck1;->b:Lsl;

    iput-object p3, p0, Lck1;->c:Lhl;

    iput-boolean p4, p0, Lck1;->d:Z

    iput-boolean p5, p0, Lck1;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lew2;

    invoke-direct {p2, p1, p3, p0}, Lew2;-><init>(Lox4;Lnd0;Lck1;)V

    return-object p2
.end method
