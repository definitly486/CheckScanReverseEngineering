.class public final Leo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldo3;


# instance fields
.field public final a:Ljn3;

.field public final b:Lmo3;


# direct methods
.method public constructor <init>(Ljn3;Lmo3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo3;->a:Ljn3;

    iput-object p2, p0, Leo3;->b:Lmo3;

    return-void
.end method


# virtual methods
.method public final a(Les4;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Leo3;->b:Lmo3;

    invoke-interface {v0}, Lmo3;->e()I

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Leo3;->a:Ljn3;

    invoke-interface {p0, v0, v1, p1}, Ljn3;->a(IZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
