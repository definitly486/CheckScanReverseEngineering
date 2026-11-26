.class public final Lid2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid2$a;,
        Lid2$b;
    }
.end annotation


# instance fields
.field public final a:Lid2$b;

.field public final b:J

.field public final c:I

.field public final d:F

.field public final e:I


# direct methods
.method public constructor <init>(Lid2$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lid2$a;->a:Lid2$b;

    iput-object v0, p0, Lid2;->a:Lid2$b;

    iget-wide v0, p1, Lid2$a;->b:J

    iput-wide v0, p0, Lid2;->b:J

    iget v0, p1, Lid2$a;->c:I

    iput v0, p0, Lid2;->c:I

    iget v0, p1, Lid2$a;->d:F

    iput v0, p0, Lid2;->d:F

    iget p1, p1, Lid2$a;->e:I

    iput p1, p0, Lid2;->e:I

    return-void
.end method
