.class public final Lhv5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liz4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lhv5;


# direct methods
.method public constructor <init>(Lhv5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv5$d;->a:Lhv5;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object v0, Lhv5$b;->b:[I

    iget-object p0, p0, Lhv5$d;->a:Lhv5;

    iget-object p0, p0, Lhv5;->g:Lhv5$c;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 p0, 0x1bb

    return p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not handled"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 p0, 0x50

    return p0
.end method
