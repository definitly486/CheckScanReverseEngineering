.class public final Lyads/is1;
.super Lyads/ls1;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vp1;


# direct methods
.method public constructor <init>(Lyads/vp1;)V
    .locals 0

    invoke-direct {p0}, Lyads/ls1;-><init>()V

    iput-object p1, p0, Lyads/is1;->a:Lyads/vp1;

    return-void
.end method


# virtual methods
.method public final b()Lyads/vp1;
    .locals 0

    iget-object p0, p0, Lyads/is1;->a:Lyads/vp1;

    return-object p0
.end method
