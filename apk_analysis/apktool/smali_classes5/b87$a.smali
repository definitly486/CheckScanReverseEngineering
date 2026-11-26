.class public final Lb87$a;
.super Lff5$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb87;->f(Ljava/lang/Object;)Lff5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lb87;


# direct methods
.method public constructor <init>(Lb87;Ljava/lang/Object;Lf86;)V
    .locals 0

    iput-object p1, p0, Lb87$a;->f:Lb87;

    invoke-direct {p0, p1, p2, p3}, Lff5$a;-><init>(Lff5;Ljava/lang/Object;Lf86;)V

    return-void
.end method


# virtual methods
.method public final a()Lff5$a$a;
    .locals 1

    new-instance v0, Lb87$a$a;

    invoke-direct {v0, p0}, Lb87$a$a;-><init>(Lb87$a;)V

    return-object v0
.end method
