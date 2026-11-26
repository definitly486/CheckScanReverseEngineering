.class public final Lyads/dl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc0;


# instance fields
.field public final a:Lyads/ma3;

.field public b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ma3;

    invoke-direct {v0}, Lyads/ma3;-><init>()V

    iput-object v0, p0, Lyads/dl0;->a:Lyads/ma3;

    const/16 v0, 0x1f40

    iput v0, p0, Lyads/dl0;->c:I

    iput v0, p0, Lyads/dl0;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lyads/wc0;
    .locals 4

    new-instance v0, Lyads/fl0;

    iget-object v1, p0, Lyads/dl0;->b:Ljava/lang/String;

    iget v2, p0, Lyads/dl0;->c:I

    iget v3, p0, Lyads/dl0;->d:I

    iget-object p0, p0, Lyads/dl0;->a:Lyads/ma3;

    invoke-direct {v0, v1, v2, v3, p0}, Lyads/fl0;-><init>(Ljava/lang/String;IILyads/ma3;)V

    return-object v0
.end method
