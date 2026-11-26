.class public final Lj06$f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$f$b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lj06$f$b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lj06$f$b$a;->a:I

    iput v0, p0, Lj06$f$b;->a:I

    iget v0, p1, Lj06$f$b$a;->b:I

    iput v0, p0, Lj06$f$b;->b:I

    iget v0, p1, Lj06$f$b$a;->c:I

    iput v0, p0, Lj06$f$b;->c:I

    iget p1, p1, Lj06$f$b$a;->d:I

    iput p1, p0, Lj06$f$b;->d:I

    return-void
.end method
