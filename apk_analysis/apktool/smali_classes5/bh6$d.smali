.class public final Lbh6$d;
.super Lbh6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lbh6$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbh6$d;

    invoke-direct {v0}, Lbh6;-><init>()V

    sput-object v0, Lbh6$d;->a:Lbh6$d;

    return-void
.end method
