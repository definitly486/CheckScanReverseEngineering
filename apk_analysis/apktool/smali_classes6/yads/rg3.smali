.class public final Lyads/rg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/du4;


# instance fields
.field public a:Z

.field public final synthetic b:Lyads/sg3;


# direct methods
.method public constructor <init>(Lyads/sg3;)V
    .locals 0

    iput-object p1, p0, Lyads/rg3;->b:Lyads/sg3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/rg3;->b:Lyads/sg3;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/sg3;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/rg3;->a:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/rg3;->b:Lyads/sg3;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lyads/sg3;->b:Z

    iget-boolean p0, p0, Lyads/rg3;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lyads/sg3;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method
