.class public final Lyads/ud2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vd2;


# instance fields
.field public final a:Lyads/cn1;

.field public b:Z


# direct methods
.method public constructor <init>(Lyads/cn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ud2;->a:Lyads/cn1;

    return-void
.end method


# virtual methods
.method public final a()Lyads/cn1;
    .locals 1

    iget-boolean v0, p0, Lyads/ud2;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/ud2;->b:Z

    iget-object p0, p0, Lyads/ud2;->a:Lyads/cn1;

    return-object p0
.end method

.method public final b()Lyads/cn1;
    .locals 0

    iget-object p0, p0, Lyads/ud2;->a:Lyads/cn1;

    return-object p0
.end method
