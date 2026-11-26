.class public final Lyads/ns2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ij6;


# instance fields
.field public final synthetic a:Lyads/ao2;


# direct methods
.method public constructor <init>(Lyads/ao2;)V
    .locals 0

    iput-object p1, p0, Lyads/ns2;->a:Lyads/ao2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/uo2;)V
    .locals 3

    invoke-virtual {p1}, Lyads/uo2;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Warning occurred while evaluating \'"

    const-string v1, "\':"

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/ns2;->a:Lyads/ao2;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "String for padding is empty."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lyads/ao2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
