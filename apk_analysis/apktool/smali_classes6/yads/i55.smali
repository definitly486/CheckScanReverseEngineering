.class public final Lyads/i55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/or;


# instance fields
.field public final a:Lg17;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg17;

    invoke-direct {v0, p1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lyads/i55;->a:Lg17;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lyads/i55;->a:Lg17;

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
