.class public final Lu70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lp70;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp70;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu70;->a:Ljava/lang/String;

    iput-object p2, p0, Lu70;->b:Ljava/lang/String;

    iput-object p3, p0, Lu70;->c:Ljava/lang/String;

    iput-object p4, p0, Lu70;->d:Lp70;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu70;->b:Ljava/lang/String;

    iget-object v1, p0, Lu70;->c:Ljava/lang/String;

    iget-object p0, p0, Lu70;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu70;->a:Ljava/lang/String;

    return-object p0
.end method
