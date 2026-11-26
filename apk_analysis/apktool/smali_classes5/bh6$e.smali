.class public final Lbh6$e;
.super Lbh6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lbh6$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbh6$e;

    invoke-direct {v0}, Lbh6;-><init>()V

    sput-object v0, Lbh6$e;->a:Lbh6$e;

    return-void
.end method
