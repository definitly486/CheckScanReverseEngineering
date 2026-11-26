.class public final Lev$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lev$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lev$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lev$a;->a:Lev$a;

    return-void
.end method
