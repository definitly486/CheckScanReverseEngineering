.class public final Lz30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz30;->a:Ljava/lang/String;

    iput-object p2, p0, Lz30;->b:Ljava/lang/String;

    iput-object p3, p0, Lz30;->c:Ljava/lang/String;

    iput-object p4, p0, Lz30;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz30;->b:Ljava/lang/String;

    iget-object p0, p0, Lz30;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz30;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic id()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz30;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
