.class public final Lj06$f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$f$c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lj06$f$c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lj06$f$c$a;->a:I

    iput v0, p0, Lj06$f$c;->a:I

    iget v0, p1, Lj06$f$c$a;->b:I

    iput v0, p0, Lj06$f$c;->b:I

    iget v0, p1, Lj06$f$c$a;->c:I

    iput v0, p0, Lj06$f$c;->c:I

    iget p1, p1, Lj06$f$c$a;->d:I

    iput p1, p0, Lj06$f$c;->d:I

    return-void
.end method
