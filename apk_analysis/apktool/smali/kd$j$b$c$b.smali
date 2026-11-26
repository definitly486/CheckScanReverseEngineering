.class public final Lkd$j$b$c$b;
.super Lkd$j$b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$j$b$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$j$b$c$b;

    const-string v1, "button_withdrawal"

    invoke-direct {v0, v1}, Lkd$j$b$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$j$b$c$b;->e:Lkd$j$b$c$b;

    return-void
.end method
