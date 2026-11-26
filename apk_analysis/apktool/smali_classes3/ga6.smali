.class public final Lga6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga6$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lga6$a;

.field public final c:Ldl;

.field public final d:Lsl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsl<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ldl;

.field public final f:Ldl;

.field public final g:Ldl;

.field public final h:Ldl;

.field public final i:Ldl;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lga6$a;Ldl;Lsl;Ldl;Ldl;Ldl;Ldl;Ldl;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lga6$a;",
            "Ldl;",
            "Lsl<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ldl;",
            "Ldl;",
            "Ldl;",
            "Ldl;",
            "Ldl;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lga6;->a:Ljava/lang/String;

    iput-object p2, p0, Lga6;->b:Lga6$a;

    iput-object p3, p0, Lga6;->c:Ldl;

    iput-object p4, p0, Lga6;->d:Lsl;

    iput-object p5, p0, Lga6;->e:Ldl;

    iput-object p6, p0, Lga6;->f:Ldl;

    iput-object p7, p0, Lga6;->g:Ldl;

    iput-object p8, p0, Lga6;->h:Ldl;

    iput-object p9, p0, Lga6;->i:Ldl;

    iput-boolean p10, p0, Lga6;->j:Z

    iput-boolean p11, p0, Lga6;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lox4;Lnw4;Lnd0;)Lsx1;
    .locals 0

    new-instance p2, Lfa6;

    invoke-direct {p2, p1, p3, p0}, Lfa6;-><init>(Lox4;Lnd0;Lga6;)V

    return-object p2
.end method
