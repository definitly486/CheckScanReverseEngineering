.class public final Ln64$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln64;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ln64$b;->a:J

    iput p3, p0, Ln64$b;->b:I

    return-void
.end method


# virtual methods
.method public final toInstant()Lg64;
    .locals 4

    sget-object v0, Lg64;->d:Lg64;

    iget-wide v0, v0, Lg64;->b:J

    iget-wide v2, p0, Ln64$b;->a:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    sget-object v0, Lg64;->e:Lg64;

    iget-wide v0, v0, Lg64;->b:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    iget p0, p0, Ln64$b;->b:I

    invoke-static {p0, v2, v3}, Lg64$a;->a(IJ)Lg64;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Li64;

    const-string v0, "The parsed date is outside the range representable by Instant (Unix epoch second "

    const/16 v1, 0x29

    invoke-static {v0, v2, v3, v1}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
