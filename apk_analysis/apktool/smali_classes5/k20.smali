.class public final Lk20;
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

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk20;->a:Ljava/lang/String;

    iput-object p2, p0, Lk20;->b:Ljava/lang/String;

    iput-object p3, p0, Lk20;->c:Ljava/lang/String;

    iput-object p4, p0, Lk20;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk20;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk20;->b:Ljava/lang/String;

    return-object p0
.end method
