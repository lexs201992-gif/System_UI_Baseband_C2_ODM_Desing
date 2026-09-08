.class public Lcom/unisoc/settings/wifi/UniUtf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "UniUtf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "Utf8ByteLengthFilter"


# instance fields
.field private final mMaxBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unisoc/settings/wifi/UniUtf8ByteLengthFilter;->mMaxBytes:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    move/from16 v3, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/16 v7, 0x800

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v10, v8, :cond_0

    move v5, v9

    goto :goto_1

    :cond_0
    if-ge v10, v7, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move v10, v2

    :goto_2
    if-ge v2, v3, :cond_7

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p4

    if-lt v2, v11, :cond_3

    if-lt v2, v12, :cond_6

    :cond_3
    invoke-interface {v13, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    if-ge v14, v8, :cond_4

    move v14, v9

    goto :goto_3

    :cond_4
    if-ge v14, v7, :cond_5

    move v14, v5

    goto :goto_3

    :cond_5
    move v14, v6

    :goto_3
    add-int/2addr v10, v14

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v2, p0

    iget v2, v2, Lcom/unisoc/settings/wifi/UniUtf8ByteLengthFilter;->mMaxBytes:I

    sub-int/2addr v2, v10

    const-string v3, ""

    if-gtz v2, :cond_8

    return-object v3

    :cond_8
    const/4 v10, 0x0

    if-lt v2, v4, :cond_9

    return-object v10

    :cond_9
    move/from16 v4, p2

    :goto_4
    if-ge v4, v1, :cond_e

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ge v11, v8, :cond_a

    move v11, v9

    goto :goto_5

    :cond_a
    if-ge v11, v7, :cond_b

    move v11, v5

    goto :goto_5

    :cond_b
    move v11, v6

    :goto_5
    sub-int/2addr v2, v11

    if-gez v2, :cond_d

    move/from16 v11, p2

    invoke-interface {v0, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "Utf8ByteLengthFilter"

    const-string v1, "can not Encode, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_d
    move/from16 v11, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    return-object v10
.end method
