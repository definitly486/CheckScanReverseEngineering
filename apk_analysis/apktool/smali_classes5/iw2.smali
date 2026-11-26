.class public final Liw2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg17;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg17;

    const-string v1, "([_A-Za-z0-9-+]+)(\\.[_A-Za-z0-9-+]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Liw2;->a:Lg17;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Liw2;->a:Lg17;

    invoke-virtual {p0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
