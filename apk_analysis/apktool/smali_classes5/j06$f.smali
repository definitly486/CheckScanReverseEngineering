.class public final Lj06$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$f$b;,
        Lj06$f$c;,
        Lj06$f$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:Lj06$f$c;

.field public final f:Lj06$f$b;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj06$f$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lj06$f$a;->a:J

    iput-wide v0, p0, Lj06$f;->a:J

    iget-wide v0, p1, Lj06$f$a;->b:J

    iput-wide v0, p0, Lj06$f;->b:J

    iget-wide v0, p1, Lj06$f$a;->c:J

    iput-wide v0, p0, Lj06$f;->c:J

    iget v0, p1, Lj06$f$a;->d:I

    iput v0, p0, Lj06$f;->d:I

    iget-object v0, p1, Lj06$f$a;->e:Lj06$f$c;

    iput-object v0, p0, Lj06$f;->e:Lj06$f$c;

    iget-object v0, p1, Lj06$f$a;->f:Lj06$f$b;

    iput-object v0, p0, Lj06$f;->f:Lj06$f$b;

    iget-object p1, p1, Lj06$f$a;->g:Ljava/lang/Object;

    iput-object p1, p0, Lj06$f;->g:Ljava/lang/Object;

    return-void
.end method
