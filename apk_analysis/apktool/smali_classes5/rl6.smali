.class public abstract Lrl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lql6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrl6$a;,
        Lrl6$b;,
        Lrl6$c;,
        Lrl6$d;,
        Lrl6$e;,
        Lrl6$f;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrl6;->a:I

    iput-object p2, p0, Lrl6;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lrl6;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lrl6;->b:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lrl6;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
