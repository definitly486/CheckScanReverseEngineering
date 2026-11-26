.class public final synthetic Lqea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xx4;


# instance fields
.field public final synthetic b:Lyads/um0;


# direct methods
.method public synthetic constructor <init>(Lyads/um0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqea;->b:Lyads/um0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lqea;->b:Lyads/um0;

    check-cast p1, Lyads/vz2;

    invoke-virtual {p0, p1}, Lyads/um0;->a(Lyads/vz2;)Z

    move-result p0

    return p0
.end method
