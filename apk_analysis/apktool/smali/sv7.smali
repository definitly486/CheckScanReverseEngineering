.class public abstract Lsv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsv7$a;,
        Lsv7$b;,
        Lsv7$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsv7;->a:I

    iput-boolean p2, p0, Lsv7;->b:Z

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lsv7;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lsv7;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
