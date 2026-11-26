.class public final Lyads/g93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h93;


# instance fields
.field public final b:Lyads/wj2;

.field public final c:Lyads/wj2;

.field public final d:Lyads/wj2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/wj2;

    sget-object v1, Lyads/d93;->b:Lyads/d93;

    invoke-direct {v0, v1}, Lyads/wj2;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/g93;->b:Lyads/wj2;

    new-instance v0, Lyads/wj2;

    new-instance v1, Ljt9;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljt9;-><init>(I)V

    invoke-direct {v0, v1}, Lyads/wj2;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/g93;->c:Lyads/wj2;

    new-instance v0, Lyads/wj2;

    sget-object v1, Lyads/f93;->b:Lyads/f93;

    invoke-direct {v0, v1}, Lyads/wj2;-><init>(Lll3;)V

    new-instance v0, Lyads/wj2;

    sget-object v1, Lyads/e93;->b:Lyads/e93;

    invoke-direct {v0, v1}, Lyads/wj2;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/g93;->d:Lyads/wj2;

    return-void
.end method

.method public static final a()Lyads/o90;
    .locals 1

    new-instance v0, Lyads/o90;

    invoke-direct {v0}, Lyads/o90;-><init>()V

    return-object v0
.end method
