.class public final Lid2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lid2$b;

.field public b:J

.field public c:I

.field public final d:F

.field public final e:I


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lid2$a;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lid2$a;->c:I

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lid2$a;->e:I

    sget-object v0, Lid2$b;->EVENT_MOVE:Lid2$b;

    iput-object v0, p0, Lid2$a;->a:Lid2$b;

    iput p1, p0, Lid2$a;->d:F

    return-void
.end method
