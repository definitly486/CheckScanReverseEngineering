.class public final Lyads/hu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hu4;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 4
    const/4 p0, 0x1

    return p0
.end method

.method public final a(J)I
    .locals 0

    .line 3
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/hu4;->b:Ljava/util/List;

    return-object p0
.end method
